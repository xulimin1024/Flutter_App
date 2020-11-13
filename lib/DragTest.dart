import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DragTest extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState() =>_DragTestState();
  // @override
  // State<StatefulWidget> createState() => _ScaleTestRouteState();
  @override
  State<StatefulWidget> createState() =>_GestureRecognizerTestRouteState();
}

class _DragTestState extends State<DragTest> {
  double _top = 0.0; //距顶部的偏移
  double _left = 0.0; //距左边的偏移
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned(
            top: _top,
            // left: _left,
            child: GestureDetector(
              child: CircleAvatar(
                child: Text("A"),
              ),
              onPanDown: (DragDownDetails e) {
                print('用户手指按下：${e.globalPosition}');
              },
              //手指滑动时会触发此回调
              onPanUpdate: (DragUpdateDetails e) {
                setState(() {
                  _left += e.delta.dx;
                  _top += e.delta.dy;
                });
              },
              onPanEnd: (DragEndDetails e) {
                //打印滑动结束时在x、y轴上的速度
                print(e.velocity);
              },
            ),
          )
        ],
      ),
    );
  }
}

class _ScaleTestRouteState extends State<DragTest> {
  double _width = 200.0; //通过修改图片宽度来达到缩放效果

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        //指定宽度，高度自适应
        child: Image.asset("./images/avatar.png", width: _width),
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            //缩放倍数在0.8到10倍之间
            _width = 200 * details.scale.clamp(.8, 10.0);
          });
        },
      ),
    );
  }
}

class _GestureRecognizerTestRouteState extends State<DragTest> {
  TapGestureRecognizer recognizer = TapGestureRecognizer();
  bool _toggle = false; //变色开关

  @override
  void dispose() {
    recognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:   Center(
        child: Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: "你好世界"),
                  TextSpan(
                    text: "点我变色",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: _toggle ? Colors.blue : Colors.red
                    ),
                    recognizer: recognizer
                      ..onTap = () {
                        setState(() {
                          _toggle = !_toggle;
                        });
                      },
                  ),
                  TextSpan(text: "你好世界"),
                ]
            )
        ),
      ),
    );

  }
}
