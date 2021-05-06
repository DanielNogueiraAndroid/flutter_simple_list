import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_package_list/domain/GetAccountUseCase.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
class AccountListView extends StatefulWidget {
  AccountListView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AccountState createState() => _AccountState();
}


class _AccountState extends State<AccountListView> {
  List<String> _items = List<String>.generate(10000, (i) => "Item $i");

  void initState() {
    super.initState();
    getIt<GetAccountUseCase>().execute().then((result) => {
      setState(() {
        _items = result.getValue().itemsOfBalance;
      })
    });
  }

  void _incrementCounter() {
    setState(() {
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${_items[index]}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
