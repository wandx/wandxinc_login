import 'package:wandxinc_login/src/domain/contracts/login_contract.dart';
import 'package:wandxinc_login/src/domain/use_cases/fetch_token.dart';
import 'package:wandxinc_login/src/wandxinc_login.dart';

/// Login service
class LoginService {
  LoginService._();

  /// Singleton instance
  static final LoginService instance = LoginService._();

  /// Login contract
  final LoginContract _repo = WandxincLogin.instance.loginRepo;

  /// Fetch token use case
  FetchToken get fetchToken => FetchToken(contract: _repo);
}
