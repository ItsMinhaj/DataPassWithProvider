import 'package:concept_of_provider/model/model_data.dart';
import 'package:flutter/cupertino.dart';

class DataModelProvider extends ChangeNotifier {
  List<DataModel> itemList = [];

  addItem(String itemName, String itemNumber) async {
    DataModel dataModel = DataModel(name: itemName, number: itemNumber);

    itemList.add(dataModel);
  }
}
