import 'package:flutter/material.dart';
import 'package:mytube1/views/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Tube1 title',
      theme: ThemeData.dark(),
      home: const StartPage(),
    );
  }
}
