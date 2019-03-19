import 'package:flutter/material.dart';

void main() {
  runApp(
      new Msg()
  );
}

class Msg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        body: new Column(
          children: <Widget>[
            helpWidget,
            MsgList()
          ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),

    );
  }

//  小助手
  static Widget msgWidget(String img_url, String name, String date, String msg) {
    return new Container(
          margin: const EdgeInsets.only(top: 10),
          height: 63,
          width: 340,
          decoration: new BoxDecoration(
              color: const Color(0xFF232339),
              borderRadius: new BorderRadius.circular(10.0)
          ),
          child: new Row(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(left: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: new Image.network(
                      img_url,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
              ),
              new Container(
                width: 200,
                  margin: const EdgeInsets.only(left: 10, top: 12),
                  child: new Align(
                  alignment: Alignment.centerLeft,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 3),
                        alignment:  Alignment.centerLeft,
                        child: new Text(
                            name,
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            )
                          ),
                      ),
                      new Text(
                          msg,
                          style: new TextStyle(
                              color: Colors.grey,
                              fontSize: 15
                          )
                      )
                    ],
                  ),
                )
              ),
              new Container(
                margin: const EdgeInsets.only(left: 25, bottom: 25),
                child: Align(
                  child: new Text(
                    date,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),
                  ),
                ),
              )
            ],
          ),

    );
  }

//  小助手组件
  Widget helpWidget = msgWidget('https://picmina.007168.net/base/NapeM2BRAp.png', '缘分小助手', '7月17日', '昨天有个人喜欢了你，打开缘分墙...');

//    消息列表组件
  Widget MsgList() {
    List<Widget> tiles = [];
    Widget MsgList;
    for (var i = 0; i < 5; i++) {
      tiles.add(
          new Row(
            children: <Widget>[
              msgWidget('https://picmina.007168.net/ddyf/user_upload/1_woman.jpg', '花花', '7月17日', '就知道你会点击我...')
            ],
          )
      );
    }

    MsgList = new Container(
      margin: const EdgeInsets.only(left: 10),
      child: new Column(
          children: tiles
      ),
    );
    return MsgList;
  }
}