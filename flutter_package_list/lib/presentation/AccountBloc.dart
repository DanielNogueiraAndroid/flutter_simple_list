import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_package_list/data/AccountRepository.dart';
import 'package:flutter_package_list/data/Result.dart';
import 'package:flutter_package_list/domain/AccountModel.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

//import 'domain/AccountModel.dart';

// class AccountBloc implements Bloc {
//
//   final AccountRepository _accountRepository;
//   var _timelineController;
//
//   final StreamController<Result<AccountModel>> _accountController = StreamController();
//
//   AccountBloc(this._accountRepository);
//
//   Stream<Result<AccountModel>> get accounts => _accountController.stream;
//
//   void _loadAccount() async {
//     final Result<AccountModel> model = await _accountRepository.getAccount();
//     _timelineController.sink.add(model);
//   }
// }

//
// class AccountBloc implements Bloc {
//   final AccountRepository _accountRepository = getIt.get();
//   final StreamController<Result<AccountModel>> _accountController = StreamController();
//   Stream<Result<AccountModel>> get accounts => _accountController.stream;
//   void _loadAccount() async {
//     final Result<AccountModel> model = await _accountRepository.getAccount();
//   //  _timelineController.sink.add(model);
//   }
//
// }