import 'package:flutter/widgets.dart';

class BaseVM extends ChangeNotifier {

  String title = "BASE TITLE";
  bool useLeftBackButton = false;
  bool isBusy = false;
  String busyLoadingText = '';
  void Function(VoidCallback fn) setState;
  
  BaseVM({required this.setState}) {
    addListener(() => setState(
          () {},
        ));
  }
}
