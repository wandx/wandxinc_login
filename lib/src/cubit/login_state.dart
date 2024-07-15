part of 'login_cubit.dart';

@immutable
class LoginState {
  const LoginState({
    this.loading = false,
    this.token,
    this.errorMessage,
  });

  final bool loading;
  final String? token;
  final String? errorMessage;
}
