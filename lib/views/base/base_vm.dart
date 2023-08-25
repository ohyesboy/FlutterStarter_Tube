import 'package:flutter/widgets.dart';

class BaseVM extends ChangeNotifier {

  bool isBusy = false;
  void Function(VoidCallback fn) setState;
  
  BaseVM({required this.setState}) {
    addListener(() => setState(
          () {},
        ));
  }
}
