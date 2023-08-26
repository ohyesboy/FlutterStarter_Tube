import 'package:flutter/material.dart';
import 'package:mytube1/app_styles.dart';

class TubeBasePage extends StatefulWidget {
  TubeBasePage({super.key});
  String title = "BASE TITLE";
  bool useLeftBackButton = false;
  @override
  State<TubeBasePage> createState() => TubeBasePageState();
}

class TubeBasePageState<T extends TubeBasePage> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
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
    if(widget.useLeftBackButton)
      return IconButton(
        onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)); 
    return Icon(Icons.menu);
  }

  buildBody() {
    return Text('TubeBasePage.buildBody()');
  }
}
