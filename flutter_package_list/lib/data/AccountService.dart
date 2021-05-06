import "dart:async";
import 'package:http/http.dart' as http;
import 'package:flutter_package_list/data/AccountApi.dart';


class AccountService implements AccountApi {
  @override
  Future<http.Response> getAccountDTO() {
    http.get(Uri.https('mylist.com', 'user'));
  }
}
