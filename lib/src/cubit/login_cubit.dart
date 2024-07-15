import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:wandxinc_login/src/domain/use_cases/fetch_token.dart';
import 'package:wandxinc_login/src/service/auth_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  final fk = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();

  Future<void> token() async {
    if (!fk.currentState!.validate()) {
      return;
    }
    emit(const LoginState(loading: true));
    await AuthService.instance
        .fetchToken(
          FetchTokenParam(
            username: username.text,
            password: password.text,
          ),
        )
        .then(
          (res) => res.fold(
            (l) => emit(LoginState(errorMessage: l.message)),
            (r) => emit(LoginState(token: r)),
          ),
        );
  }
}
