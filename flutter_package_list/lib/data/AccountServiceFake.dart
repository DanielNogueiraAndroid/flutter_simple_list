import "dart:async";
import 'package:http/http.dart' as http;
import 'package:flutter_package_list/data/AccountApi.dart';

// Fake AccountService to mock data
class AccountServiceFake implements AccountApi {
  @override
  Future<http.Response> getAccountDTO() {
   return Future.value(http.Response(
       '{"accountNumber": 1 , "todoList": ["1 - Learn more about Leonardo","2 - Learn more about unit test Flutter"]}'
       , 200));
  }
}