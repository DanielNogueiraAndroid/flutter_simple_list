import 'package:flutter_package_list/data/AccountApi.dart';
import 'package:flutter_package_list/data/AccountRepository.dart';
import 'package:flutter_package_list/data/AccountRepositoryImpl.dart';
import 'package:flutter_package_list/data/AccountServiceFake.dart';
import 'package:flutter_package_list/domain/GetAccountUseCase.dart';
import 'package:flutter_package_list/domain/GetAccountUseCaseImpl.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
class AccountModules{
  void load(){
    //getIt.registerSingleton<AccountApi>(AccountService());
    getIt.registerSingleton<AccountApi>(AccountServiceFake(), signalsReady: true);
    getIt.registerSingleton<AccountRepository>(AccountRepositoryImpl(), signalsReady: true);
    getIt.registerFactory<GetAccountUseCase>(() => GetAccountUseCaseImpl());
  }
}
