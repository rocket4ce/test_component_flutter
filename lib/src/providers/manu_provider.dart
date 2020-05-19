import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider(){
    
  }
    
  Future<List<dynamic>> loadData() async {
    final res = await rootBundle.loadString('data_json/menu_opts.json');
    Map dataMap = jsonDecode(res);
    options = dataMap["rutas"];
    return options;
  }
}

final menuProvider = new _MenuProvider();