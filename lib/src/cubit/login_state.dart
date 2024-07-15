part of 'login_cubit.dart';

/// LoginState
@immutable
class LoginState {
  /// LoginState
  const LoginState({
    this.loading = false,
    this.token,
    this.errorMessage,
  });

  /// loading state
  final bool loading;

  /// token
  final String? token;

  /// errorMessage
  final String? errorMessage;
}
