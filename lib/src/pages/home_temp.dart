import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ["uno", "dos", "tres", "cuatro", "cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes temp"),
      ),
      body: ListView(
        children: _createItemShort()
      ),
    );
  }


  List<Widget> _createItems(){
    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final temWidget = ListTile(
        title: Text(opt),
      );
      list..add(temWidget)
          ..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemShort(){
    return  options.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + ' !'),
            subtitle: Text("cualquier cosa"),
            leading: Icon(Icons.satellite),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }

}