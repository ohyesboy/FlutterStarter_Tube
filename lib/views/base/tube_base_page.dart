

import 'package:flutter/material.dart';
import 'package:mytube1/app_styles.dart';

class TubeBasePage extends StatefulWidget {
  const TubeBasePage({super.key});

  @override
  State<TubeBasePage> createState() => TubeBasePageState();
}

class TubeBasePageState<T extends TubeBasePage> extends State<T> {
  String title = "BASE TITLE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: kPageHeaderTextStyle,
        ),
        elevation: 0,
        leading: buildLeftHeaderButton(context),
        backgroundColor: Colors.transparent,
      ),
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
