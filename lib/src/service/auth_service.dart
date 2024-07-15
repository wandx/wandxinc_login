import 'package:wandxinc_login/src/domain/contracts/login_contract.dart';
import 'package:wandxinc_login/src/domain/use_cases/fetch_token.dart';
import 'package:wandxinc_login/src/wandxinc_login.dart';

class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();

  LoginContract _repo = WandxincLogin.instance.loginRepo;

  FetchToken get fetchToken => FetchToken(contract: _repo);
}
