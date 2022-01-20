import 'package:flutter/material.dart';

import 'package:homework/homework_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color(0xFFffac1b),
        primaryColor: Color(0xFF1a5cdb),
        disabledColor: Color(0xFFf4f1fd),
        buttonColor: Color(0xFF3b3d41),
      ),
      home: HomeworkList(),
    );
  }
}
