import 'package:wandxinc_login/src/domain/contracts/login_contract.dart';

/// {@template wandxinc_login}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class WandxincLogin {
  /// {@macro wandxinc_login}
  WandxincLogin._();

  /// Singleton instance
  static final WandxincLogin instance = WandxincLogin._();

  /// Login contract
  late LoginContract loginRepo;
}
