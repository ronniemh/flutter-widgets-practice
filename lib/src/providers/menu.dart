import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    //_loadData();
  }

  Future<List<dynamic>> _loadData() async {
    final res = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(res);
    print(dataMap['routes']);
    options = dataMap['routes'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
