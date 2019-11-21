import 'package:flutter/material.dart';
import 'package:flutter_widget_practice/src/providers/menu.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    print(menuProvider.options);
    return ListView(
      children: itemsList(),
    );
  }

  List<Widget> itemsList() {
    return [
      ListTile(
        title: Text('data'),
      ),
      Divider()
    ];
  }
}
