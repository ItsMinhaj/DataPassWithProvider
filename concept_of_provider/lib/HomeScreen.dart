import 'package:concept_of_provider/add_item_screen.dart';
import 'package:concept_of_provider/provider/data_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Sreen"),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AddItemScreen()));
              })
        ],
      ),
      body: Consumer<DataModelProvider>(builder: (context, getData, _) {
        return ListView.builder(
            itemCount: getData.itemList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  title: Text(getData.itemList[index].name),
                  subtitle: Text(getData.itemList[index].number + " TK"),
                ),
              );
            });
      }),
    );
  }
}
