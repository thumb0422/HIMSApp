import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Text(
                'homePage',
                style: TextStyle(color: Colors.green, fontSize: 40),
              ),
            ],
          ),
        ));
  }
}