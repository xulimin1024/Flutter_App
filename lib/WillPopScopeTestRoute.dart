import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
class WillPopScopeTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WillPopScopeTestRouteState();
  }
}

class _WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {
  DateTime _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("这是一个会返回拦截得界面"),),
      body: WillPopScope(
          onWillPop: () async {
            if (_lastPressedAt == null ||
                DateTime.now().difference(_lastPressedAt) >
                    Duration(seconds: 1)) {
              //两次点击间隔超过1秒则重新计时
              //Toast.show("您确认要退出吗",context);
              _lastPressedAt = DateTime.now();
              return false;
            }
            return true;
          },
          child: Container(
            alignment: Alignment.center,
            child: Text("1秒内连续按两次返回键退出"),
          )
      ),
    );
  }
}
