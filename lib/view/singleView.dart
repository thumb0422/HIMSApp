/**
 *
**/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingleView extends StatelessWidget {
  SingleView({
    this.data,
    this.callback,
  });

  final int data;
  final GestureTapCallback callback;
  String icon;

  @override
  Widget build(BuildContext context) {
    onInitData();
    return Container(
      width: 130,
      height: 120,
      decoration: ShapeDecoration(
          image: DecorationImage(
              image: AssetImage(this.icon), fit: BoxFit.fill),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.deepPurple,
              width: 0.5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )),
      child: GestureDetector(
        onTap: (){
          callback();
        },
      ),
    );
  }

  onTouchUpInside() {

  }

  onInitData() {
    var imageNameTmp = 'bed_'+(data%2).toString()+'.png';
    imageNameTmp = "res/${imageNameTmp}";
    this.icon = imageNameTmp;
  }
}