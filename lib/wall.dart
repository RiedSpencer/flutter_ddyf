import 'package:flutter/material.dart';

void main() {
  runApp(
      new Wall()
  );
}

class Wall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('点点缘分'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: new Container(
          child: stack,
        ),
      ),
    );
  }

  //实现用户的身份文本部分
  static Widget intro = new Container(
    child: new Column(
      children: <Widget>[
        new Container(
            margin: const EdgeInsets.only(top: 500, left: 25 ),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                '李大锤',
                textAlign: TextAlign.left,
                style: new TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            )
        ),

//          用户个人信息
        new Container(
          margin: const EdgeInsets.only(top: 10, left: 25 ),
          child: new Row(
            children: <Widget>[
              new Container(
                width: 40,
                height: 20,
                padding: new EdgeInsets.only(left: 5, right: 5,top: .5,bottom: .5),
                color: Colors.pinkAccent,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(right: 2 ),
                      child:  new Image.asset(
                        'images/girl_1.png',
                        width: 10,
                        height: 17,
                      ),
                    ),
                    new Text(
                        '22',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 17
                        )
                    )
                  ],
                ),
              ),
              new Container(
                width: 48,
                height: 20,
                margin: const EdgeInsets.only(left: 7 ),
                padding: new EdgeInsets.only(left: 5, right: 5,top: 1.5,bottom: 1.5),

                color: const Color(0xFF3E52BF),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(right: 2 ),
                      child:  new Image.asset(
                        'images/position.png',
                        width: 10,
                        height: 17,
                      ),
                    ),
                    new Text(
                        '长沙',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        )

      ],
    ),
  );

//      滑动组件
  static Widget joinSection = new Container(
    margin: const EdgeInsets.only(top:250,  right: 15),
    child: new Column(
      children: <Widget>[
        new Container(
          child: new Image.asset(
            'images/unlike_1.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(top:30),
          child: new Image.asset(
            'images/slike_1.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(top:30),
          child: new Image.asset(
            'images/like_1.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),         ),
      ],
    ),
  );

//      浮动组件
  var stack = new Stack(
    alignment: const FractionalOffset(1, 0.99),
    children: <Widget>[
      new Image.asset(
        'images/1.jpg',
        width: 500,
        height: 750,
        fit: BoxFit.cover,
      ),
      intro,
      joinSection,
    ],
  );
  }