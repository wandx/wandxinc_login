import 'package:dartz/dartz.dart';
import 'package:wandxinc_login/src/domain/exceptions/login_exception.dart';

/// LoginContract
abstract class LoginContract {
  /// Token
  Future<Either<LoginException, String>> token(
    String username,
    String password,
  );
}
