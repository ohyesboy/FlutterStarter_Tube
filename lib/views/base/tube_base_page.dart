

import 'package:flutter/material.dart';
import 'package:mytube1/app_styles.dart';

class TubeBasePage extends StatefulWidget {
  TubeBasePage({super.key});
  String title = "BASE TITLE";
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

  Widget buildLeftHeaderButton(BuildContext context) {
    return Icon(Icons.menu);
  }

  buildBody() {
    return Text('TubeBasePage.buildBody()');
  }
}
