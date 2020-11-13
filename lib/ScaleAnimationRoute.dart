import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) {
    return new Center(
      child: new AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget child) {
            return new Container(
                height: animation.value, width: animation.value, child: child);
          },
          child: child),
    );
  }
}

// class AnimatedImage extends AnimatedWidget{
//   AnimatedImage({Key key, Animation<double> animation})
//       : super(key: key, listenable: animation);
//
//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable;
//     return GrowTransition(
//       child: Image.asset("images/avatar.png"),
//       animation: animation,
//     );
//   }
// }
class ScaleAnimationRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScaleAnimationRouteState();
}

class _ScaleAnimationRouteState extends State<ScaleAnimationRoute>
    with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    //设置动画持续时间
    controller = AnimationController(duration: const Duration(seconds: 3), vsync: this);
    //使用弹性曲线
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    //图片宽高从0变到300
    animation = Tween(begin: 0.0, end: 300.0).animate(animation);
    animation.addStatusListener((status) {
      if(status==AnimationStatus.completed){
        controller.reverse();
      }else if(status == AnimationStatus.dismissed){
        //动画恢复到初始状态时执行动画（正向）
        controller.forward();
      }
    });
    //启动动画
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("scale动画"),
        ),
        body: GrowTransition(
          child: Image.asset("images/avatar.png"),
          animation: animation,
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
