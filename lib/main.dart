import 'package:flutter/material.dart';
import './pages/login.dart';

//Main Class

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'notify',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: LoginPage(),
    );
  }
}