import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Ui_Theme.dart';
import 'package:task_blackwhite_02/Welcome_Screen/MainWelcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      darkTheme: darkThemeData(context),
      home: WelcomeScreen(),
    );
  }
}
