
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mytube1/views/base/tube_base_page.dart';
import 'package:mytube1/views/other_page_vm.dart';
import '../models/item.dart';

class OtherPage extends TubeBasePage {
  Item item;

  OtherPage({required this.item});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends TubeBasePageState<OtherPage, OtherPageVM> {

  @override
  void initState() {
    super.initState();
    vm = OtherPageVM(setState: setState);
    vm.item = widget.item;
    vm.title = 'Other page';
    vm.useLeftBackButton = true;
  }

  @override
  buildBody() {
    return Text(widget.item.title);
  }
}
