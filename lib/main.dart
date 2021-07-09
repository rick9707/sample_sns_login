import 'package:flutter/material.dart';
import 'package:sample_sns_login/pages/home.dart';
import 'package:sample_sns_login/pages/login.dart';
import 'package:sample_sns_login/src/app1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

