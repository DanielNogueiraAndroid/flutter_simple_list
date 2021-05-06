import 'package:flutter_package_list/domain/AccountModel.dart';

import 'AccountApi.dart';
import 'AccountDTO.dart';
import 'dart:convert';
import 'AccountMapper.dart';
import 'AccountRepository.dart';
import 'Result.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class AccountRepositoryImpl implements AccountRepository {
  final AccountApi _accountApi = getIt<AccountApi>();
  final AccountMapper _accountMapper = AccountMapper(); // TODO inject

  Future<Result<AccountModel>> getAccount() async {
    http.Response response = await _accountApi.getAccountDTO();
    if (response.statusCode == 200) {
      return Result.success(_accountMapper.map(parseAccountDTO(response.body)));
    } else {
      return Result.failure(ResultException("Fail to load account"));
    }
  }

  AccountDTO parseAccountDTO(String string) {
    var decoded = jsonDecode(string).cast<String,dynamic>();
    return AccountDTO.fromJson(decoded);
  }
}
