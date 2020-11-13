import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColumnTestState();
}

class _ColumnTestState extends State<ColumnTest> {
  @override
  Widget build(BuildContext context) {

    var redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red),);
    return Scaffold(
      appBar: AppBar(
        title: Text("这是column测试界面"),
      ),
      body:
      Container(
        margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
        constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
        decoration: BoxDecoration(//背景装饰
            gradient: RadialGradient( //背景径向渐变
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98
            ),
            boxShadow: [ //卡片阴影
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0
              )
            ]
        ),
        transform: Matrix4.rotationZ(.2), //卡片倾斜变换
        alignment: Alignment.center, //卡片内文字居中
        child: Text( //卡片文字
          "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      )
      // Container(
      //   color: Colors.black,
      //   child: Transform(
      //     alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
      //     transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
      //     child: new Container(
      //       padding: const EdgeInsets.all(8.0),
      //       color: Colors.deepOrange,
      //       child: const Text('Apartment for rent!'),
      //     ),
      //   ),
      // ),
          // Align(
          //   child:  DecoratedBox(
          //     decoration: BoxDecoration(
          //         gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
          //         borderRadius: BorderRadius.circular(3.0), //3像素圆角
          //         boxShadow: [ //阴影
          //           BoxShadow(
          //               color:Colors.black54,
          //               offset: Offset(2.0,2.0),
          //               blurRadius: 4.0
          //           )
          //         ]
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
          //       child: Text("Hello World!"),
          //     ),
          //   ),
          // ),

        // ConstrainedBox(
        //   constraints: BoxConstraints(
        //       minWidth: double.infinity, //宽度尽可能大
        //       minHeight: 50.0 //最小高度为50像素
        //   ),
        //   child: Container(
        //     child: redBox,
        //   ),
        // ),
      // Padding(
      //   //上下左右各添加16像素补白
      //   padding: EdgeInsets.all(16.0),
      //   child:
      //   Column(
      //     //显式指定对齐方式为左对齐，排除对齐干扰
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       Padding(
      //         //左边添加8像素补白
      //         padding: const EdgeInsets.only(left: 8.0),
      //         child: Text("Hello world"),
      //       ),
      //       Padding(
      //         //上下各添加8像素补白
      //         padding: const EdgeInsets.symmetric(vertical: 8.0),
      //         child: Text("I am Jack"),
      //       ),
      //       Padding(
      //         // 分别指定四个方向的补白
      //         padding: const EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),
      //         child: Text("Your friend"),
      //       )
      //     ],
      //   ),
      // ),
      // Container(
      //   height: 120.0,
      //   width: 120.0,
      //   color: Colors.blue[50],
      //   child: Align(
      //     alignment: Alignment.bottomRight,
      //     child: FlutterLogo(
      //       size: 60,
      //     ),
      //   ),
      // ),
      //通过ConstrainedBox来确保Stack占满屏幕
      // ConstrainedBox(
      //   constraints: BoxConstraints.expand(),
      //   child: Stack(
      //     alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
      //     children: <Widget>[
      //       Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
      //         color: Colors.red,
      //       ),
      //       Positioned(
      //         left: 18.0,
      //         child: Text("I am Jack"),
      //       ),
      //       Positioned(
      //         top: 18.0,
      //         child: Text("Your friend"),
      //       )
      //     ],
      //   ),
      // ),
      // Wrap(
      //   spacing: 8.0, // 主轴(水平)方向间距
      //   runSpacing: 4.0, // 纵轴（垂直）方向间距
      //   alignment: WrapAlignment.center, //沿主轴方向居中
      //   children: <Widget>[
      //     new Chip(
      //       avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
      //       label: new Text('Hamilton'),
      //     ),
      //     new Chip(
      //       avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
      //       label: new Text('Lafayette'),
      //     ),
      //     new Chip(
      //       avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
      //       label: new Text('Mulligan'),
      //     ),
      //     new Chip(
      //       avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
      //       label: new Text('Laurens'),
      //     ),
      //   ],
      // ),
      // Container(
      //   color: Colors.green,
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
      //       children: <Widget>[
      //         Expanded(
      //             child: Container(
      //           color: Colors.red,
      //           child: Column(
      //             mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
      //             children: <Widget>[
      //               Text("hello world "),
      //               Text("I am Jack "),
      //             ],
      //           ),
      //         )),
      //       ],
      //     ),
      //   ),
      // ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Text(" hello world "),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //     Row(
      //       mainAxisSize: MainAxisSize.min,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Text(" hello world "),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       textDirection: TextDirection.rtl,
      //       children: <Widget>[
      //         Text(" hello world "),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //     Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       verticalDirection: VerticalDirection.up,
      //       children: <Widget>[
      //         Text(" hello world ", style: TextStyle(fontSize: 30.0),),
      //         Text(" I am Jack "),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
