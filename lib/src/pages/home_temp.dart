import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final _opciones = ['a', 'b', 'c', 'd', 'e'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp components'),
      ),
      body: ListView(
        children: wList(),
      ),
    );
  }

  List<Widget> wList() {
    return _opciones.map((c) => Column(
      children: <Widget>[
        ListTile(
          title: Text('# $c'),
          subtitle: Text('Some data'),
          leading: Icon(Icons.accessibility),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        )
      ],
    )).toList();
  } 
}
