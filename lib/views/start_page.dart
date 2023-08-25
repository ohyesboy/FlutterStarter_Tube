

import 'package:flutter/material.dart';
import 'package:mytube1/app_styles.dart';
import 'package:mytube1/main.dart';
import 'package:mytube1/views/base/tube_base_page.dart';
import 'package:mytube1/views/other_page.dart';

class StartPage extends TubeBasePage {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState() as State<StartPage>;
}

class _StartPageState extends TubeBasePageState<StartPage> {
  
  @override
  void initState() {
    
    super.initState();
    title = "TUBE PLAER!";
  }


  @override
  Widget buildLeftHeaderButton(BuildContext context) {
    return IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtherPage(),
                  ));
            },
            icon: Icon(Icons.menu));
  }


  @override
  buildBody() {
    return Padding(padding:EdgeInsets.all(10),
    child: Column(children: [

      Text('search'),
      SizedBox(height: 10,),
      Text('search list')
    ]), );
  }
}
