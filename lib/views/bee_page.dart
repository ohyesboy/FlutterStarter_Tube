import 'package:flutter/material.dart';
import 'package:mytube1/views/base/tube_base_page.dart';

class BeePage extends TubeBasePage {

  
  @override
  State<BeePage> createState() => _BeePageState();
}

class _BeePageState extends  TubeBasePageState<BeePage>  {

  @override
  void initState() {
    super.initState();
    widget.title = "BEES";
    widget.useLeftBackButton = true;
  }



}