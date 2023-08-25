import 'package:flutter/material.dart';
import 'package:mytube1/views/base/tube_base_page.dart';

class OtherPage extends TubeBasePage {
  const OtherPage({super.key});

  @override
  State<OtherPage> createState() => _OtherPageState() as State<OtherPage>;
}

class _OtherPageState extends TubeBasePageState<OtherPage> {
  String string2 = "string2";

  @override
  void initState() {
    super.initState();
    title = 'Other page';
  }

  @override
  buildBody() {
    return Text('other page');
  }

  @override
  Widget buildLeftHeaderButton(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back));
  }

}
