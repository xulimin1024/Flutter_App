import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class FormTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute>
    with TickerProviderStateMixin {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  var _dataValue = 0.0;

  AnimationController _animationController;

  @override
  void initState() {
    //动画执行时间3秒
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(color: Colors.green);
    return Scaffold(
        appBar: AppBar(
          title: Text("我是校验表单"),
        ),
        body: ListView.separated(
          itemCount: 100, //item总数
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Center(
              child: Text("$index"),
            ));
          },
          separatorBuilder: (BuildContext context, int index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
        )
        // ListView(
        //   shrinkWrap: true,
        //   padding: const EdgeInsets.all(20.0),
        //   children: <Widget>[
        //     const Text('I\'m dedicating every day to you',textScaleFactor: 2,),
        //     const Text('Domestic life was never quite my style',textScaleFactor: 2,),
        //     const Text('When you smile, you knock me out, I fall apart',textScaleFactor: 2,),
        //     const Text('And I thought I was so smart',textScaleFactor: 2,),
        //   ],
        // )

        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        //   child: Form(
        //     key: _formKey,
        //     autovalidate: true, //开启自动校验
        // child: Column(
        //   children: <Widget>[
        //      // TextFormField(
        //      //   autofocus: true,
        //      //
        //      //   controller: _unameController,
        //      //   decoration: InputDecoration(
        //      //       labelText: "用户名",
        //      //       hintText: "用户名或邮箱",
        //      //       icon: Icon(Icons.person)
        //      //   ),
        //      //   // 校验用户名
        //      //   validator:(v){
        //      //     return v.trim().length > 0 ? null:"不能为空";
        //      //   } ,
        //      // ),
        //
        //     // TextFormField(
        //     //     controller: _pwdController,
        //     //     decoration: InputDecoration(
        //     //         labelText: "密码",
        //     //         hintText: "您的登录密码",
        //     //         icon: Icon(Icons.lock)
        //     //     ),
        //     //     obscureText: true,
        //     //     //校验密码
        //     //     validator: (v) {
        //     //        return v.trim().length > 5 ? null : "密码不能少于6位";
        //     //     }
        //     // ),
        //     LinearProgressIndicator(
        //       value:_dataValue,
        //       backgroundColor: Colors.grey[200],
        //       valueColor: AlwaysStoppedAnimation(Colors.blue),
        //     ),
        //     CircularProgressIndicator(
        //       value:_dataValue,
        //       backgroundColor: Colors.grey[200],
        //       valueColor: AlwaysStoppedAnimation(Colors.blue),
        //     ),
        //     // 线性进度条高度指定为3
        //     SizedBox(
        //       height: 3,
        //       child: LinearProgressIndicator(
        //         backgroundColor: Colors.grey[200],
        //         valueColor: AlwaysStoppedAnimation(Colors.blue),
        //         value: _dataValue,
        //       ),
        //     ),
        //    // 圆形进度条直径指定为100
        //     SizedBox(
        //       height: 100,
        //       width: 100,
        //       child: CircularProgressIndicator(
        //         backgroundColor: Colors.grey[200],
        //         valueColor: ColorTween(begin: Colors.red, end: Colors.blue)
        //           .animate(_animationController), // 从灰色变成蓝色
        //         value: 0.7,
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(top: 28.0),
        //       child: Row(
        //         children: <Widget>[
        //           Expanded(
        //               child: RaisedButton(
        //                 padding: EdgeInsets.all(15.0),
        //                 child: Text("登录"),
        //                 color: Theme.of(context).primaryColor,
        //                 textColor: Colors.white,
        //                 onPressed: (){
        //                   //在这里不能通过此方式获取FormState，context不对
        //                   //print(Form.of(context));
        //
        //                   // 通过_formKey.currentState 获取FormState后，
        //                   // 调用validate()方法校验用户名密码是否合法，校验
        //                   // 通过后再提交数据。
        //                   // if((_formKey.currentState as FormState).validate()){
        //                   //   //验证通过提交数据
        //                   //   Toast.show("校验完成啦",context,gravity: Toast.TOP);
        //                   // }
        //                   //增加数据
        //
        //                   setState(() {
        //                     if(_dataValue>1){
        //                       _dataValue=0.0;
        //                     }else{
        //                       _dataValue+=0.1;
        //                     }
        //
        //                   });
        //
        //
        //                 },
        //               )
        //           ),
        //
        //         ],
        //       ),
        //     )
        //
        //   ],
        // )
        //   ),
        // ),
        );
  }
}
