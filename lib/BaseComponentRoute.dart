import 'package:flutter/material.dart';
import 'package:flutter_app/entity/PetCardViewModel.dart';

class BaseComponentRoute extends StatelessWidget {
  //创建一个对象
  PetCardViewModel petData = PetCardViewModel(
      coverUrl: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605795232937&di=fc5b088fb52260f4cabdc0b8df3f7c46&imgtype=0&src=http%3A%2F%2Fpic5.58cdn.com.cn%2Fp1%2Fbig%2Fn_v2c4c74d54173b42d5a9fea48a97d46539.jpg",
      userImgUrl:"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3158995431,3224787691&fm=11&gp=0.jpg",
      userName:"大米要煮小米粥",
      description:"小米|我家的小狗",
      topic:"梦飞小窝",
      publishTime:"12:59",
      publishContent:"今天带着小团团去逛街，好多好东西都想带回来",
      replies:356,
      likes:258,
      shares:126,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("萌宠页面"),
      ),
      body:  PetCard(data:petData,),
    );
  }
}



class PetCard extends StatelessWidget {
  final PetCardViewModel data;
  //构造传参
  const PetCard({Key key, this.data}) : super(key: key);

  //拆分出4个组件
  //封面
  Widget renderCover() {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Image.network(
            data.coverUrl,
            height: 200,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          left: 0,
          right: 100,
          height: 0,
          bottom: 0,
          child: Container(
            //渐变色蒙层
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
                colors:[
                    Color.fromARGB(0, 0, 0, 0),
                    Color.fromARGB(80, 0, 0, 0),
                  ],
              )
            ),
          ),

        )
      ],
    );
  }

  //用户信息
  Widget renderUserInfo() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFCCCCCC),
                backgroundImage: NetworkImage(data.userImgUrl),
              ),
              Padding(padding: EdgeInsets.only(left: 8)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.userName,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 2)),
                  Text(
                    data.description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            data.publishTime,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF999999),
            ),
          )
        ],
      ),
    );
  }

  //发布内容
  Widget renderPublishContent() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 14),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Color(0xFFFFC600),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Text(
              '# ${data.topic}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            data.publishContent,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }

  //交流区
  Widget renderInteractionArea() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.message,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                data.replies.toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                size: 16,
                color: Color(0xFFFFC600),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                data.likes.toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.share,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                data.shares.toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 4,
            color: Color.fromARGB(20, 0, 0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          this.renderCover(),
          this.renderUserInfo(),
          this.renderPublishContent(),
          this.renderInteractionArea()
        ],
      ),
    );
  }
}
