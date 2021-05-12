import 'package:clean_arq_flutter/UI/commons/settings.dart';
import 'package:clean_arq_flutter/UI/pages/home/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Settings.primarySwatch,
      ),
      home: HomePage(),
    );
  }
}