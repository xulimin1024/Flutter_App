import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyDrawer.dart';
class ScaffoldRoute extends StatefulWidget   {

  @override
  State<StatefulWidget> createState() => _ScaffoldRoute();
}

class _ScaffoldRoute extends State<ScaffoldRoute> with SingleTickerProviderStateMixin{
  int _selectedIndex = 1;

  TabController _tabController; //需要定义一个Controller
  List tabs = ["新闻", "历史", "图片"];
  @override
  void initState() {
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是drawer的路由页面"),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
            onPressed: () {
              // 打开抽屉菜单
              Scaffold.of(context).openDrawer();
            },
          );
        },
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Text(e)).toList(),
        ),
        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: () {})
        ],
      ),
        drawer: MyDrawer(),
      //嵌套主体的View
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) { //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 5),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton( //悬浮按钮
          child: Icon(Icons.add),
          onPressed:_onAdd
      ),
    );
  }
  //bottomNavigationBar的点击事件
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print("打印出index${_selectedIndex}");
    });
  }

  void _onAdd() {
  }
}