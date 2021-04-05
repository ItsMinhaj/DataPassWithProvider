import 'package:concept_of_provider/HomeScreen.dart';
import 'package:concept_of_provider/provider/data_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddItemScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item Screen"),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Product Name",
                  ),
                ),
                TextFormField(
                  controller: numberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Price",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () async {
                    if (nameController.text.isEmpty ||
                        numberController.text.isEmpty) {
                      return;
                    }
                    await Provider.of<DataModelProvider>(context, listen: false)
                        .addItem(nameController.text, numberController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("Add To Cart"),
                  color: Colors.blue,
                ),
              ],
            ),
          )),
    );
  }
}
