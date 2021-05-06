import 'package:http/http.dart' as http;

abstract class AccountApi{
  Future<http.Response> getAccountDTO();
}