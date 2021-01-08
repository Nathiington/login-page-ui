import 'package:flutter/material.dart';
import 'package:login/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(     
        primarySwatch: Colors.blue,     
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:LoginPage(),
    );
  }
}

