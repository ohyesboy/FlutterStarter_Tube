import 'package:flutter/material.dart';
import 'package:mytube1/views/base/base_vm.dart';
import 'package:mytube1/views/base/tube_base_page.dart';

import '../models/item.dart';
import 'start_page_vm.dart';

class OtherPage extends TubeBasePage {
  Item item;

  OtherPage({required this.item});

  @override
  State<OtherPage> createState() => _OtherPageState() as State<OtherPage>;
}

class _OtherPageState extends TubeBasePageState<OtherPage> {
  late OtherPageVM vm;

  @override
  void initState() {
    super.initState();
    vm = OtherPageVM(setState: setState);
    vm.item = widget.item;
    widget.title = 'Other page';
    widget.useLeftBackButton = true;
  }

  @override
  buildBody() {
    return Text(widget.item.title);
  }
}

class OtherPageVM extends BaseVM {
  Item? item;
  OtherPageVM({required setState}) : super(setState: setState) {}
}
