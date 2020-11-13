
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//声明一个不可变的widget
class SingleChildScrollViewTestRoute  extends StatelessWidget{
  var str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: str.split("").map((e) => Text(e)).toList(),
        ),
      ),


    );
  }

}