import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfiniteListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##Loading##";

  //创建数组
  var _words = <String>[loadingTag];

  @override
  void initState() {
    _retrieveData();
  }

  //请求数据的方法
  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) => {
          setState(() {
            _words.insertAll(
                _words.length - 1,
                generateWordPairs()
                    .take(20)
                    .map((e) => e.asPascalCase)
                    .toList());
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我是listView页面"),
        ),
        body: Column(
          children: [
            ListTile(title: Text("商品列表")),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      if (_words[index] == loadingTag) {
                        if (_words.length - 1 < 100) {
                          //获取数据
                          _retrieveData();
                          //加载数据显示一个进度条
                          return Container(
                            padding: EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 24.0,
                                height: 24.0,
                                child: CircularProgressIndicator(
                                    strokeWidth: 2.0)),
                          );
                        } else {
                          return Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                "没有更多了",
                                style: TextStyle(color: Colors.grey),
                              ));
                        }
                      }
                      //显示单元项
                      return ListTile(title: Center(child:Text(_words[index])));
                    },
                    separatorBuilder: (context, index) => Divider(height: .1),
                    itemCount: _words.length))
          ],
        ));
  }
}
