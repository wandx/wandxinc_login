part of 'login_cubit.dart';

/// LoginState
@immutable
class LoginState {
  /// LoginState
  const LoginState({
    this.loading = false,
    this.token = const None(),
    this.errorMessage = const None(),
  });

  /// loading state
  final bool loading;

  /// token
  final Option<String> token;

  /// errorMessage
  final Option<String> errorMessage;
}
