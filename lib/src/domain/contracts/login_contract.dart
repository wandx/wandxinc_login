import 'package:dartz/dartz.dart';
import 'package:wandxinc_login/src/domain/exceptions/login_exception.dart';

abstract class LoginContract {
  Future<Either<LoginException, String>> token(
    String username,
    String password,
  );
}
