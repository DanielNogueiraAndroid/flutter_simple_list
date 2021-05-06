import 'package:flutter_package_list/domain/AccountModel.dart';
import 'Result.dart';

abstract class AccountRepository {
  Future<Result<AccountModel>> getAccount();
}