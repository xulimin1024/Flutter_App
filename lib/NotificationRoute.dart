import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _NotificationRouteState();
  }
}

class _NotificationRouteState extends State<NotificationRoute> {
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("自定义消息界面"),),
      body:  NotificationListener<MyNotification>(
        onNotification: (notification) {
          setState(() {
            _msg += notification.msg;
          });
          return true;
        },
        child:  Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
//          RaisedButton(
//           onPressed: () => MyNotification("Hi").dispatch(context),
//           child: Text("Send Notification"),
//          ),
              Builder(
                builder: (context) {
                  return RaisedButton(
                    //按钮点击时分发通知
                    onPressed: () => MyNotification("Hi").dispatch(context),
                    child: Text("Send Notification"),
                  );
                },
              ),
              Text(_msg)
            ],
          ),
        ),),
    );

  }
}

class MyNotification extends Notification {
  MyNotification(this.msg);

  final String msg;
}
