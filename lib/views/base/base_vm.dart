import 'package:flutter/widgets.dart';

class BaseVM extends ChangeNotifier {
  void Function(VoidCallback fn) setState;
  BaseVM({required this.setState}) {
    addListener(() => setState(
          () {},
        ));
  }
}
