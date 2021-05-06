import 'package:flutter_package_list/data/AccountRepository.dart';
import 'package:flutter_package_list/data/Result.dart';
import 'AccountModel.dart';
import 'GetAccountUseCase.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class GetAccountUseCaseImpl extends GetAccountUseCase{
  final AccountRepository _accountRepository = getIt.get<AccountRepository>();
  @override
  Future<Result<AccountModel>> execute() {
    return _accountRepository.getAccount();
  }
}