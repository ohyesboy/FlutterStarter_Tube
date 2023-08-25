import 'package:flutter/widgets.dart';
import 'package:mytube1/models/item.dart';
import 'package:mytube1/views/base/base_vm.dart';

class StartPgaeVM extends BaseVM {
  List<Item> items = [];
  search(String value) async {
    items.add(Item(name: value, age: 10));
    items.add(Item(name: 'Test', age: 13));
    notifyListeners();
  }

  StartPgaeVM(void Function(VoidCallback fn) setState) :super(setState){
    
  }
}
