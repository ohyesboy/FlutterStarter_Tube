import 'package:flutter/widgets.dart';

class BaseVM extends ChangeNotifier {
  BaseVM(void Function(VoidCallback fn) setState) {
    addListener(() => setState(
          () {},
        ));
  }
}
