import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:wandxinc_login/src/domain/use_cases/fetch_token.dart';
import 'package:wandxinc_login/src/service/login_service.dart';

part 'login_state.dart';

/// LoginCubit
class LoginCubit extends Cubit<LoginState> {
  /// LoginCubit init
  LoginCubit() : super(const LoginState());

  /// Form Key
  final fk = GlobalKey<FormState>();

  /// Username
  final username = TextEditingController();

  /// Password
  final password = TextEditingController();

  /// Get token
  Future<void> token() async {
    if (!fk.currentState!.validate()) {
      return;
    }
    emit(const LoginState(loading: true));
    await LoginService.instance
        .fetchToken(
          FetchTokenParam(
            username: username.text,
            password: password.text,
          ),
        )
        .then(
          (res) => res.fold(
            (l) => emit(LoginState(errorMessage: some(l.message))),
            (r) => emit(LoginState(token: some(r), errorMessage: some(''))),
          ),
        );
  }
}
