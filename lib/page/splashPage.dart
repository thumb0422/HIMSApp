import 'package:flutter/material.dart';
import './homePage.dart';

class SplashPage extends StatelessWidget {
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
                'splashPage',
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                  child: Text('Skip',
                      style: TextStyle(color: Colors.yellow, fontSize: 25)),
                  color: Colors.red,
                  onPressed: () {
                    //to homePage
                    Navigator.push<Object>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return new HomePage();
                        },
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
