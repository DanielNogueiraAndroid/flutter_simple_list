import 'package:flutter/material.dart';
import 'package:flutter_package_list/di/AccountModules.dart';
import 'package:flutter_package_list/presentation/AccountListView.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void main() {
  AccountModules().load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Simple List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccountListView(title: 'Flutter Demo Simple List Page'),
    );
  }
}
