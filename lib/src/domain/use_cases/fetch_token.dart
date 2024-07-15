import 'package:dartz/dartz.dart';
import 'package:wandxinc_core/wandxinc_core.dart';
import 'package:wandxinc_login/src/domain/contracts/login_contract.dart';

class FetchTokenParam {
  const FetchTokenParam({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;
}

class FetchToken extends BaseUseCase<String, FetchTokenParam> {
  FetchToken({required LoginContract contract}) : _contract = contract;

  final LoginContract _contract;

  @override
  Future<Either<BaseException, String>> call(FetchTokenParam params) {
    return _contract.token(params.username, params.password);
  }
}
