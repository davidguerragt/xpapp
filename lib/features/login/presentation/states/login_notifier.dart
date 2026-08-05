import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/login/domain/use_cases/local_user_info_use_case.dart';
import 'package:xpapp/features/login/domain/entities/user_entity.dart';
import 'package:xpapp/features/login/domain/entities/user_info_entity.dart';
import 'package:xpapp/features/login/domain/use_cases/get_user_info_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/is_logged_in_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/log_out_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/login_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/register_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/save_user_info_use_case.dart';
import 'package:xpapp/features/login/presentation/states/login_state.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginUseCase _loginUseCase;
  final LogOutUseCase _logoutUseCase;
  final IsLoggedInUseCase _isLoggedInUseCase;
  final LoginRegisterUseCase _registerUseCase;
  final GetUserInfoUseCase _getUserInfoUseCase;
  final SaveUserInfoUseCase _saveUserInfoUseCase;
  final LocalUserInfoUseCase _localUserInfoUseCase = LocalUserInfoUseCase();

  LoginNotifier({
    LoginUseCase? loginUseCase,
    IsLoggedInUseCase? isLoggedInUseCase,
    LogOutUseCase? logoutUseCase,
    LoginRegisterUseCase? registerUseCase,
    GetUserInfoUseCase? userInfoUseCase,
    SaveUserInfoUseCase? saveUserInfoUseCase,
  }) : _loginUseCase = loginUseCase ?? LoginUseCase(),
       _isLoggedInUseCase = isLoggedInUseCase ?? IsLoggedInUseCase(),
       _logoutUseCase = logoutUseCase ?? LogOutUseCase(),
       _registerUseCase = registerUseCase ?? LoginRegisterUseCase(),
       _getUserInfoUseCase = userInfoUseCase ?? GetUserInfoUseCase(),
       _saveUserInfoUseCase = saveUserInfoUseCase ?? SaveUserInfoUseCase(),
       super(const LoginInitialState());

  Future<bool> login(String email, String password) async {
    state = LoginLoadingState();
    try {
      final bool isLoggedIn = await _isLoggedInUseCase();
      if (isLoggedIn) {
        final currentUser = await _isLoggedInUseCase.getCurrentUser();
        if (currentUser != null) {
          try {
            final userInfo = await _localUserInfoUseCase
                .getUserInfoFromLocalStorage();
            state = LoginSuccessState(
              currentUser.copyWith(role: userInfo?.role),
              userInfo,
            );
          } catch (_) {
            state = LoginSuccessState(currentUser, null);
          }
          return true;
        }
      }
      final UserEntity user = await _loginUseCase(email, password);
      final UserInfoEntity ur = await _getUserInfoUseCase.getUserInfo(email);
      state = LoginSuccessState(user.copyWith(role: ur.role), ur);
      return true;
    } catch (e) {
      state = LoginErrorState(e.toString());
      return false;
    }
  }

  Future<bool> isLoggedIn() async {
    try {
      // Si ya está en estado de éxito o admin, mantener ese estado
      if (state is LoginSuccessState || state is LoginAdminState) {
        return true;
      }

      // Verificar con Firebase
      final bool isLoggedIn = await _isLoggedInUseCase();

      if (isLoggedIn) {
        final currentUser = await _isLoggedInUseCase.getCurrentUser();

        if (currentUser != null) {
          try {
            final userInfo = await _getUserInfoUseCase.getUserInfo(
              currentUser.email,
            );
            state = LoginSuccessState(
              currentUser.copyWith(role: userInfo.role),
              userInfo,
            );
          } catch (_) {
            state = LoginSuccessState(currentUser, null);
          }
          return true;
        }

        state = LoginLoggedInState(true);
        return true;
      } else {
        // Si no está logueado, volver al estado inicial
        state = const LoginInitialState();
        return false;
      }
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
      await _saveUserInfoUseCase.saveUserInfo(
        UserInfoEntity(
          user: email,
          firstName: '',
          surname: '',
          fullName: '',
          role: userRole,
        ),
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
      final UserInfoEntity userInfo = await _getUserInfoUseCase.getUserInfo(
        email,
      );
      final isAdmin = (userInfo.role == 'admin');
      state = LoginAdminState(isAdmin);
      return isAdmin;
    } catch (e) {
      state = LoginErrorState(e.toString());
      return false;
    }
  }
}
