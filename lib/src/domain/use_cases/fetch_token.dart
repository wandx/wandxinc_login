import 'package:dartz/dartz.dart';
import 'package:wandxinc_core/wandxinc_core.dart';
import 'package:wandxinc_login/src/domain/contracts/login_contract.dart';

/// Fetch token parameter
class FetchTokenParam {
  /// Fetch token parameter
  const FetchTokenParam({
    required this.username,
    required this.password,
  });

  /// Username
  final String username;

  /// Password
  final String password;
}

/// Fetch token use case
class FetchToken extends BaseUseCase<String, FetchTokenParam> {
  /// Fetch token use case
  FetchToken({required LoginContract contract}) : _contract = contract;

  final LoginContract _contract;

  @override
  Future<Either<BaseException, String>> call(FetchTokenParam params) {
    return _contract.token(params.username, params.password);
  }
}
