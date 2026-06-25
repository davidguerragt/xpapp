import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/login/domain/entities/user_entity.dart';
import 'package:xpapp/features/login/domain/entities/user_role_entity.dart';
import 'package:xpapp/features/login/domain/use_cases/get_user_role_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/is_logged_in_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/log_out_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/login_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/register_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/save_user_role_use_case.dart';
import 'package:xpapp/features/login/presemtation/states/login_state.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginUseCase _loginUseCase;
  final LogOutUseCase _logoutUseCase;
  final IsLoggedInUseCase _isLoggedInUseCase;
  final LoginRegisterUseCase _registerUseCase;
  final GetUserRoleUseCase _userRoleUseCase;
  final SaveUserRoleUseCase _saveUserRoleUseCase;

  LoginNotifier({
    LoginUseCase? loginUseCase,
    IsLoggedInUseCase? isLoggedInUseCase,
    LogOutUseCase? logoutUseCase,
    LoginRegisterUseCase? registerUseCase,
    GetUserRoleUseCase? userRoleUseCase,
    SaveUserRoleUseCase? saveUserRoleUseCase,
  }) : _loginUseCase = loginUseCase ?? LoginUseCase(),
       _isLoggedInUseCase = isLoggedInUseCase ?? IsLoggedInUseCase(),
       _logoutUseCase = logoutUseCase ?? LogOutUseCase(),
       _registerUseCase = registerUseCase ?? LoginRegisterUseCase(),
       _userRoleUseCase = userRoleUseCase ?? GetUserRoleUseCase(),
       _saveUserRoleUseCase = saveUserRoleUseCase ?? SaveUserRoleUseCase(),
       super(const LoginInitialState());

  Future<bool> login(String email, String password) async {
    state = LoginLoadingState();
    try {
      final UserEntity user = await _loginUseCase(email, password);
      final UserRoleEntity ur = await _userRoleUseCase.getUserRole(email);
      if (ur.role == 'admin') {
        state = LoginAdminState(true);
        return true;
      }
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

  Future<bool> register(String email, String password, String? role) async {
    state = LoginLoadingState();
    try {
      final userRole = role ?? 'client';
      final UserEntity user = await _registerUseCase(email, password);
      await _saveUserRoleUseCase.saveUserRole(
        UserRoleEntity(user: email, role: userRole),
      );
      state = LoginRegisterSuccessState(user);
      return true;
    } catch (e) {
      state = LoginErrorState(e.toString());
      return false;
    }
  }

  Future<bool> isAdmin(String email) async {
    try {
      final UserRoleEntity userRole = await _userRoleUseCase.getUserRole(email);
      final isAdmin = (userRole.role == 'admin');
      state = LoginAdminState(isAdmin);
      return isAdmin;
    } catch (e) {
      state = LoginErrorState(e.toString());
      return false;
    }
  }
}
