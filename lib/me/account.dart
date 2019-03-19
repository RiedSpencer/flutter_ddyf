import 'package:flutter/material.dart';
import './private.dart';
import './logout.dart';

void main() {
  runApp(
      new Account()
  );
}

class Account extends StatelessWidget {
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
        body: new Column(
          children: <Widget>[
            account1(context)
          ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

//  列表协议
  Widget account1(BuildContext context){
    return new Column(
      children: <Widget>[
        new Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1F1F34),
            ),
            child: new Table(
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(50.0),
                1: FixedColumnWidth(180.0),
                2: FixedColumnWidth(100.0),
                3: FixedColumnWidth(30.0),
              },
              border: TableBorder(horizontalInside: BorderSide(color: const Color(0xFF74747E), width: 1)),
              children: <TableRow>[
                new TableRow(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(top: 15),
                      child:  new Image.asset(
                        'images/acc_btn1.png',
                        width: 23,
                        height: 23,
                      ),
                    ),
                    new Container(
                        margin: const EdgeInsets.only(top: 18, bottom: 20),
                        child: new GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => new Private()));
                          },
                          child: new Text(
                            '手机号',
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 19
                            ),
                          ),
                        )
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 18),
                      child: new Text(
                        '155****3107',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 20),
                      /*child:  new Image.asset(
                    'images/arrow_r.png',
                    width: 15,
                    height: 15,
                  ),*/
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(top: 17),
                      child:  new Image.asset(
                        'images/acc_btn2.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    new Container(
                        margin: const EdgeInsets.only(top: 18, bottom: 25),
                        child: new GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => new Private()));
                          },
                          child: new Text(
                            '隐身设置',
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 19
                            ),
                          ),
                        )
                    ),
                    new Text(
                        ''
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 20),
                      child:  new Image.asset(
                        'images/arrow_r.png',
                        width: 15,
                        height: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ),
        new Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF1F1F34),
            ),
            child: new Table(
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(50.0),
                1: FixedColumnWidth(180.0),
                2: FixedColumnWidth(100.0),
                3: FixedColumnWidth(30.0),
              },
              border: TableBorder(horizontalInside: BorderSide(color: const Color(0xFF74747E), width: 1)),
              children: <TableRow>[
                new TableRow(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(top: 15),
                      child:  new Image.asset(
                        'images/acc_btn3.png',
                        width: 23,
                        height: 23,
                      ),
                    ),
                    new Container(
                        margin: const EdgeInsets.only(top: 18, bottom: 20),
                        child: new GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => new Private()));
                          },
                          child: new Text(
                            '清除所有聊天记录',
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 19
                            ),
                          ),
                        )
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 18),
                      child: new Text(
                          ''
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 20),
                      child:  new Image.asset(
                        'images/arrow_r.png',
                        width: 15,
                        height: 15,
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(top: 17),
                      child:  new Image.asset(
                        'images/acc_btn4.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    new Container(
                        margin: const EdgeInsets.only(top: 18, bottom: 25),
                        child: new GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => new Logout()));
                          },
                          child: new Text(
                            '注销账号',
                            style: new TextStyle(
                                color: Colors.white,
                                fontSize: 19
                            ),
                          ),
                        )
                    ),
                    new Text(
                        ''
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 20),
                      child:  new Image.asset(
                        'images/arrow_r.png',
                        width: 15,
                        height: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
        )
      ],
    );
  }
}

