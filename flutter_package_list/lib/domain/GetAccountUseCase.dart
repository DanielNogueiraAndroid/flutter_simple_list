import 'package:flutter_package_list/data/Result.dart';

import 'AccountModel.dart';

abstract class GetAccountUseCase{
  Future<Result<AccountModel>> execute();
}