import 'package:flutter/material.dart';
import 'package:mytube1/views/base/tube_base_page.dart';
import 'package:mytube1/views/bee_page_vm.dart';

class BeePage extends TubeBasePage {
  @override
  State<BeePage> createState() => _BeePageState();
}

class _BeePageState extends TubeBasePageState<BeePage, BeePageVM> {
  @override
  void initState() {
    super.initState();

    vm = BeePageVM(setState: setState);
    vm.title = "BEES";
    vm.useLeftBackButton = true;
  }
}
