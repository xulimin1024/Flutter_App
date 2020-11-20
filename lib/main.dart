import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FutureTestRoute.dart';
import 'package:flutter_app/InfiniteGridView.dart';
import 'package:flutter_app/ScrollControllerTestRoute.dart';
import 'package:toast/toast.dart';
import 'NewRoute.dart';
import 'CounterWidget.dart';
import 'FormTestRoute.dart';
import 'ColumnTest.dart';
import 'ScaffoldRoute.dart';
import 'SingleChildScrollViewTestRoute.dart';
import 'InfiniteListView.dart';
import 'CustomScrollViewTestRoute.dart';
import 'ScrollNotificationTestRoute.dart';
import 'WillPopScopeTestRoute.dart';
import 'GestureDetectorTestRoute.dart';
import 'DragTest.dart';
import 'NotificationRoute.dart';
import 'ScaleAnimationRoute.dart';
import 'HeroAnimationRoute.dart';
import 'StaggerAnimation.dart';
import 'FileOperationRoute.dart';
import 'FutureBuilderRoute.dart';
import 'WebSocketRoute.dart';
import 'BaseComponentRoute.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/", //名为"/"的路由作为应用的home(首页)
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "tip2": (context) {
          return TipRoute(text: ModalRoute.of(context).settings.arguments);
        },
        "new_page": (context) => NewRoute(),
        "new_page2": (context) => EchoRoute(),
        "new_page3": (context) => CounterWidget(),
        "new_page4": (context) => MyText(),
        "new_page5": (context) => FormTestRoute(),
        "new_page6": (context) => ColumnTest(),
        "new_page7": (context) => ScaffoldRoute(),
        "new_page8": (context) => SingleChildScrollViewTestRoute(),
        "new_page9": (context) => InfiniteListView(),
        "new_page10": (context) => InfiniteGridView(),
        "new_page11": (context) => CustomScrollViewTestRoute(),
        "new_page12": (context) => ScrollControllerTestRoute(),
        "new_page13": (context) => ScrollNotificationTestRoute(),
        "new_page14": (context) => WillPopScopeTestRoute(),
        "new_page15": (context) => FutureTestRoute(),
        "new_page16": (context) => GestureDetectorTestRoute(),
        "new_page17": (context) => DragTest(),
        "new_page18": (context) => NotificationRoute(),
        "new_page19": (context) => ScaleAnimationRoute(),
        "new_page20": (context) => HeroAnimationRoute(),
        "new_page21": (context) => StaggerAnimationRoute(),
        "new_page22": (context) => FileOperationRoute(),
        "new_page23": (context) => FutureBuilderRoute(),
        "new_page24": (context) => WebSocketRoute(),
        "new_page25": (context) => BaseComponentRoute(),
        "/": (context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
      },
      // home: new MyHomePage(title: 'Flutter Demo Home Page'),
      //home: RouterTestRoute()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            // //添加个按钮
            // FlatButton(
            //   child: Text("open new route"),
            //   textColor: Colors.red,
            //   onPressed: () {
            //     //导航到新路由
            //     // Navigator.pushNamed(context, "new_page3");
            //     //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
            //     Navigator.of(context)
            //         .pushNamed("new_page4", arguments: "里大狗大狗的狗");
            //   },
            // ),
            // FlatButton(
            //   child: Text("open route5"),
            //   textColor: Colors.blue,
            //   onPressed: () {
            //     //导航到新路由
            //     // Navigator.pushNamed(context, "new_page3");
            //     //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
            //     Navigator.of(context).pushNamed("new_page5");
            //   },
            // ),
            Row(
              children: [
                FlatButton(
                  child: Text("open route6"),
                  textColor: Colors.blue,
                  onPressed: () {
                    //导航到新路由
                    // Navigator.pushNamed(context, "new_page3");
                    //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
                    Navigator.of(context).pushNamed("new_page6");
                  },
                ),
                FlatButton(
                  child: Text("打开抽屉页"),
                  textColor: Colors.blue,
                  onPressed: () {
                    //导航到新路由
                    // Navigator.pushNamed(context, "new_page3");
                    //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
                    Navigator.of(context).pushNamed("new_page7");
                  },
                ),
                FlatButton(
                  child: Text("打开滚动栏页"),
                  textColor: Colors.blue,
                  onPressed: () {
                    //导航到新路由
                    // Navigator.pushNamed(context, "new_page3");
                    //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
                    Navigator.of(context).pushNamed("new_page8");
                  },
                ),

              ],
            ),
          Row(
            children: [
              FlatButton(
                child: Text("打开listView页"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  // Navigator.pushNamed(context, "new_page3");
                  //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
                  Navigator.of(context).pushNamed("new_page9");
                },
              ),
              FlatButton(
                child: Text("打开GridView页"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  // Navigator.pushNamed(context, "new_page3");
                  //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
                  Navigator.of(context).pushNamed("new_page10");
                },
              ),
              FlatButton(
                child: Text("打开组合的Grid页"),
                textColor: Colors.blue,
                onPressed: () {
                  //导航到新路由
                  // Navigator.pushNamed(context, "new_page3");
                  //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
                  Navigator.of(context).pushNamed("new_page11");
                },
              ),
            ],
          ),
           Row(
             children: [
               FlatButton(
                 child: Text("打开监听页"),
                 textColor: Colors.blue,
                 onPressed: () {
                   //导航到新路由
                   // Navigator.pushNamed(context, "new_page3");
                   //Navigator.of(context).pushNamed("tip2", arguments: "里大狗大狗的狗");
                   Navigator.of(context).pushNamed("new_page12");
                 },
               ),
               FlatButton(
                 child: Text("打开通知监听页"),
                 textColor: Colors.blue,
                 onPressed: () {
                   Navigator.of(context).pushNamed("new_page13");
                 },
               ),
               FlatButton(
                 child: Text("打开返回拦截按钮页"),
                 textColor: Colors.blue,
                 onPressed: () {
                   Navigator.of(context).pushNamed("new_page14");
                 },
               ),
             ],),
            Row(
              mainAxisAlignment:  MainAxisAlignment.start,
              children: [
                FlatButton(
                  child: Text("打开异步加载UI"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page15");
                  },
                ),
                FlatButton(
                  child: Text("打开手势识别页"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page16");
                  },
                ),
                FlatButton(
                  child: Text("打开小球拖动页"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page17");
                  },
                ),
              ],
            ),
          Row(
            children: [
              FlatButton(
                child: Text("打开DIY通知页"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed("new_page18");
                },
              ),
              FlatButton(
                child: Text("打开Scale动画页"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed("new_page19");
                },
              ),
              FlatButton(
                child: Text("打开Hero动画页"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed("new_page20");
                },
              ),
            ],),
            Row(
              children: [
                FlatButton(
                  child: Text("打开交织动画页"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page21");
                  },
                ),
                FlatButton(
                  child: Text("打开文件记录"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page22");
                  },
                ),
                FlatButton(
                  child: Text("Dio网络请求"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page23");
                  },
                ),
              ],
            ),
            Row(
              children: [
                FlatButton(
                  child: Text("webSocket网络请求"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page24");
                  },
                ),
                FlatButton(
                  child: Text("萌宠页面展示"),
                  textColor: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("new_page25");
                  },
                ),
              ],),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//第二个页面
// class NewRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("New route"),
//       ),
//       body: Center(
//         child: Text("This is new route"),
//       ),
//     );
//   }
// }

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text, // 接收一个text参数
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          // 打开`TipRoute`，并等待返回结果
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TipRoute(
                  // 路由参数
                  text: "我是提示李狗蛋",
                );
              },
            ),
          );
          //输出`TipRoute`路由返回结果
          print("路由返回值: $result");
        },
        child: Text("打开提示页"),
      ),
    );
  }
}

//创建了一个获取参数的路由
class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context).settings.arguments;
    var imgs = AssetImage("images/avatar.png");
    print('获取到路由参数${args}');
    TextEditingController _unameController = TextEditingController();
    _unameController.text = "hello world!";
    _unameController.selection = TextSelection(
        baseOffset: 2, extentOffset: _unameController.text.length);
    print(_unameController.text);
    var tempStr = " ";
    return Scaffold(
        appBar: AppBar(
          title: Text(_unameController.text),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _unameController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person),
              ),
              onChanged: (v) {},
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            ),
            Text(
              tempStr,
              style: TextStyle(fontSize: 16, backgroundColor: Colors.red),
            )
          ],
        )

        //    Image(
        //     // image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604074620771&di=dae22e17449d12782e940b9bd5ca5040&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fzhidao%2Fwh%253D450%252C600%2Fsign%3Da587b23df11f3a295a9dddcaac159007%2F500fd9f9d72a60590cfef2f92934349b023bba62.jpg"),
        //    image: AssetImage("images/avatar.png"),
        //     width: 200.0,
        //     height: 200,
        //     repeat: ImageRepeat.repeatX,
        // ),
        //    // RaisedButton(
        //    //   color: Colors.blue,
        //    //   highlightColor: Colors.blue[700],
        //    //   colorBrightness: Brightness.dark,
        //    //   splashColor: Colors.grey,
        //    //   child: Text("Submit"),
        //    //   shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        //    //   onPressed: () {},
        //    // ),
        //    // IconButton(
        //    //   icon: Icon(Icons.thumb_down),
        //    //   onPressed: () {},
        //    // )
        //    // OutlineButton(
        //    //   child: Text("normal",
        //    //   style:TextStyle(
        //    //     fontSize: 48,
        //    //     backgroundColor: Colors.red
        //    //   ),),
        //    //   onPressed: () {},
        //    // )
        //    //     Text("${args}",
        //   //   style: TextStyle(
        //   //     fontSize: 28,
        //   //     background: Paint()..color =Colors.cyanAccent,
        //   //   ),
        //   // ),
        //
        // ),
        );
  }
}

class MyText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTestState();
}

class _MyTestState extends State<MyText> {
  TextEditingController _unameController = TextEditingController();

  var tempStr = " ";

  @override
  void initState() {
    _unameController.addListener(() {
      tempStr = _unameController.text;
      print("你输入的内容是${tempStr}");
    });
  }

  @override
  Widget build(BuildContext context) {
    // _unameController.text = "hello world!";
    // _unameController.selection = TextSelection(
    //     baseOffset: 2, extentOffset: _unameController.text.length);
    return Scaffold(
        appBar: AppBar(
          title: Text(_unameController.text),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _unameController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              maxLength: 200,
              onEditingComplete: () {},

              // onChanged: (v){
              //   setState(() {
              //       tempStr = _unameController.text;
              //
              //   });
              // },
            ),
            // TextField(
            //   decoration: InputDecoration(
            //       labelText: "密码",
            //       hintText: "您的登录密码",
            //       prefixIcon: Icon(Icons.lock)),
            //   obscureText: true,
            // ),
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  Toast.show("你点击了按钮啊", context, gravity: Toast.TOP);
                },
                child: null),
            Text(
              tempStr,
              style: TextStyle(fontSize: 16, backgroundColor: Colors.red),
            )
          ],
        )

        //    Image(
        //     // image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604074620771&di=dae22e17449d12782e940b9bd5ca5040&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fzhidao%2Fwh%253D450%252C600%2Fsign%3Da587b23df11f3a295a9dddcaac159007%2F500fd9f9d72a60590cfef2f92934349b023bba62.jpg"),
        //    image: AssetImage("images/avatar.png"),
        //     width: 200.0,
        //     height: 200,
        //     repeat: ImageRepeat.repeatX,
        // ),
        //    // RaisedButton(
        //    //   color: Colors.blue,
        //    //   highlightColor: Colors.blue[700],
        //    //   colorBrightness: Brightness.dark,
        //    //   splashColor: Colors.grey,
        //    //   child: Text("Submit"),
        //    //   shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        //    //   onPressed: () {},
        //    // ),
        //    // IconButton(
        //    //   icon: Icon(Icons.thumb_down),
        //    //   onPressed: () {},
        //    // )
        //    // OutlineButton(
        //    //   child: Text("normal",
        //    //   style:TextStyle(
        //    //     fontSize: 48,
        //    //     backgroundColor: Colors.red
        //    //   ),),
        //    //   onPressed: () {},
        //    // )
        //    //     Text("${args}",
        //   //   style: TextStyle(
        //   //     fontSize: 28,
        //   //     background: Paint()..color =Colors.cyanAccent,
        //   //   ),
        //   // ),
        //
        // ),
        );
  }
}
