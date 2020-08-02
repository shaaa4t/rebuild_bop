import 'package:flutter/material.dart';
import 'package:rebuild_bop_app/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rebuild BOP App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        buttonColor: Color(0xffA91B63),
      ),
      home: LoginPage(),
    );
  }
}
