import 'package:flutter/material.dart';
import 'package:flutter_widget_practice/src/pages/alert_page.dart';
import 'package:flutter_widget_practice/src/pages/avatar_page.dart';
import 'package:flutter_widget_practice/src/pages/home_page.dart';
import 'package:flutter_widget_practice/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: gettApplicationRoutes(),
      onGenerateRoute: (settings) {
        print('Route not found: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
