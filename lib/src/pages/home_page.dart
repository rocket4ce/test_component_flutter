import 'package:componets/src/providers/manu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola"),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // print (menuProvider.options);
    // menuProvider.loadData().then((options){
    //   print("lista");
    //   print(options);
    // });
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );

    
  }

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> options = [];
    
    data.forEach((element) { 
      final widgetTemp = ListTile(
        title: Text(element["texto"]),
        leading: Icon(Icons.arrow_back),
        trailing: Icon(Icons.arrow_back_ios),
        onTap: (){},
      );

      options..add(widgetTemp)
            ..add(Divider());
    });
    return options;
  }
  
}