import 'package:riverpod/legacy.dart';
import 'package:xpapp/features/login/domain/use_cases/is_logged_in_use_case.dart';
import 'package:xpapp/features/login/domain/use_cases/log_out_use_case.dart';
import 'package:xpapp/features/login/presemtation/states/logout_state.dart';

final logoutProvider = StateNotifierProvider<LogoutNotifier, LogoutState>(
  (ref) => LogoutNotifier(),
);

class LogoutNotifier extends StateNotifier<LogoutState> {
  final LogOutUseCase _logoutUseCase;
  final IsLoggedInUseCase _isLoggedInUseCase;

  LogoutNotifier({
    LogOutUseCase? logoutUseCase,
    IsLoggedInUseCase? isLoggedInUseCase,
  }) : _logoutUseCase = logoutUseCase ?? LogOutUseCase(),
       _isLoggedInUseCase = isLoggedInUseCase ?? IsLoggedInUseCase(),
       super(const LogoutState.initial());

  Future<void> logout() async {
    state = const LogoutState.loading();
    try {
      // Perform logout logic here
      final isLoggedIn = await _isLoggedInUseCase.call();
      if (!isLoggedIn) {
        state = const LogoutState.error('User is not logged in');
        return;
      }

      final logoutResult = await _logoutUseCase.call();

      if (logoutResult) {
        state = const LogoutState.success();
      } else {
        state = const LogoutState.error('Logout failed');
      }
      // state = const LogoutState.success();
    } catch (e) {
      state = LogoutState.error(e.toString());
    }
  }
}
