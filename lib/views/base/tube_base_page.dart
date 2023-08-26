import 'package:flutter/material.dart';
import 'package:mytube1/app_styles.dart';
import 'package:mytube1/views/base/base_vm.dart';

class TubeBasePage extends StatefulWidget {
  TubeBasePage({super.key});
  
  @override
  State<TubeBasePage> createState() => TubeBasePageState();
}

class TubeBasePageState<T extends TubeBasePage, Tvm extends BaseVM> extends State<T> {

  late Tvm vm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          vm.title,
          style: kPageHeaderTextStyle,
        ),
        elevation: 0,
        leading: buildLeftHeaderButton(context),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: kPageBackgroundColor,
      body: buildBody(),
    );
  }

  navigateToPage(Widget Function() builder) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => builder()));
  }

  setState2() {
    setState(() {});
  }

  Widget buildLeftHeaderButton(BuildContext context) {
    if(vm.useLeftBackButton)
      return IconButton(
        onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)); 
    return Icon(Icons.menu);
  }

  buildBody() {
    return Text('TubeBasePage.buildBody()');
  }
}
