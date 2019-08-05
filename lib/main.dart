import 'package:flutter/material.dart';
import './page/splashPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//不显示右上角的debug标志
      home: SplashPage(),
    );
  }
}
