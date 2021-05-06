import 'package:flutter_package_list/domain/AccountModel.dart';

import 'AccountDTO.dart';
import 'Mapper.dart';

class AccountMapper implements Mapper<AccountDTO, AccountModel> {
  AccountModel map(AccountDTO input) {
    return AccountModel(input.accountNumber,input.todoList);
  }
}
