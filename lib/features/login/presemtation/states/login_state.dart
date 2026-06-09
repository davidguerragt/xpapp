import 'package:xpapp/features/login/domain/entities/user_entity.dart';

abstract base class LoginState {
  final String? errorMessage;
  final bool isLoading = false;
  final bool isSuccess = false;
  const LoginState({this.errorMessage});
}

final class LoginInitialState extends LoginState {
  const LoginInitialState();
}

final class LoginLoadingState extends LoginState {
  const LoginLoadingState();
}

final class LoginSuccessState extends LoginState {
  final UserEntity user;
  const LoginSuccessState(this.user);
}

final class LoginErrorState extends LoginState {
  const LoginErrorState(String errorMessage)
    : super(errorMessage: errorMessage);
}

final class LoginLoggedInState extends LoginState {
  final bool isLoggedIn;
  const LoginLoggedInState(this.isLoggedIn);
}
