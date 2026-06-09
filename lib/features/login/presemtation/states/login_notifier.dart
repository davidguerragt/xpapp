import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/login/domain/entities/user_entity.dart';
import 'package:xpapp/features/login/domain/use_cases/is_logged_in_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/log_out_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/login_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/register_use_case.dart';
import 'package:xpapp/features/login/presemtation/states/login_state.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginUseCase _loginUseCase;
  final LogOutUseCase _logoutUseCase;
  final IsLoggedInUseCase _isLoggedInUseCase;
  final LoginRegisterUseCase _registerUseCase;

  LoginNotifier({
    LoginUseCase? loginUseCase,
    IsLoggedInUseCase? isLoggedInUseCase,
    LogOutUseCase? logoutUseCase,
    LoginRegisterUseCase? registerUseCase,
  }) : _loginUseCase = loginUseCase ?? LoginUseCase(),
       _isLoggedInUseCase = isLoggedInUseCase ?? IsLoggedInUseCase(),
       _logoutUseCase = logoutUseCase ?? LogOutUseCase(),
       _registerUseCase = registerUseCase ?? LoginRegisterUseCase(),
       super(const LoginInitialState());

  Future<bool> login(String email, String password) async {
    state = LoginLoadingState();
    try {
      final UserEntity user = await _loginUseCase(email, password);
      state = LoginSuccessState(user);
      return true;
    } catch (e) {
      state = LoginErrorState(e.toString());
      return false;
    }
  }

  Future<bool> isLoggedIn() async {
    state = LoginLoadingState();
    try {
      final bool isLoggedIn = await _isLoggedInUseCase();
      state = LoginLoggedInState(isLoggedIn);
      return true;
    } catch (e) {
      state = LoginErrorState(e.toString());
      return false;
    }
  }

  Future<void> logout() async {
    state = LoginLoadingState();
    try {
      await _logoutUseCase();
      state = const LoginInitialState();
    } catch (e) {
      state = LoginErrorState(e.toString());
    }
  }

  Future<bool> register(String email, String password) async {
    state = LoginLoadingState();
    try {
      final UserEntity user = await _registerUseCase(email, password);
      state = LoginSuccessState(user);
      return true;
    } catch (e) {
      state = LoginErrorState(e.toString());
      return false;
    }
  }
}
