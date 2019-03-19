import 'package:flutter/material.dart';
import './me/intro.dart';
import './me/help.dart';
import './me/account.dart';
import './me/choice.dart';
import './me/profile.dart';
import './me/image.dart';

void main() {
  runApp(
      new Me()
  );
}

class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('点点缘分'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: new Container(
            child: new Column(
              children: <Widget>[
                myInfo('https://wx.qlogo.cn/mmopen/vi_32/01l5SmOolMBJg6dTdkarsXtRxCHEodUdhNn9rW7ibcibKeKXSQLmjkI3aHyezVtosw059HZaSDmZxe01MT3wejdQ/132', '饶美丽', '1000000000348'),
                accountSafe(context),
                response(context)
              ],
            ),
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
    }


//    我的信息组件
    Widget myInfo(String img_url, String name, String yfid) {
      return new Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1F1F34),
        ),
        padding: const EdgeInsets.only(top: 20, bottom: 15),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //头像
            new Container(
              margin: const EdgeInsets.only(left: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: new Image.network(
                  img_url,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //名称
            new Container(
                width: 150,
                margin: const EdgeInsets.only(left: 10, top: 8),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      alignment:  Alignment.centerLeft,
                      child: new Text(
                          name,
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          )
                      ),
                    ),
                    new Text(
                        '缘分号: '+yfid,
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        )
                    )
                  ],
                ),
              ),
          ],
        ),
      );
    }

//    账号安全组件
    Widget accountSafe(BuildContext context) {
        return new Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1F1F34),
          ),
          margin: const EdgeInsets.only(top: 12),
          child: new Table(
            border: TableBorder(verticalInside: BorderSide(color: const Color(0xFF181828), width: 2)),
            children: <TableRow>[
              new TableRow(
                children: <Widget>[
                    new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Choice()));
                      },
                      child: new Container(
                              padding: const EdgeInsets.only(top: 25, bottom: 25),
                              child: new Column(
                                  children: <Widget>[
                                    new Container(
                                      margin: const EdgeInsets.only(bottom: 8),
                                      child: new Image.asset(
                                        'images/user_btn1.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    new Text(
                                      '筛选设置',
                                      style: new TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                    )
                                  ]),
                            ),
                      ),
                    new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Account()));
                      },
                      child: new Container(
                        padding: const EdgeInsets.only(top: 25, bottom: 25),
                        child: new Column(
                            children: <Widget>[
                              new Container(
                                margin: const EdgeInsets.only(bottom: 8),
                                child: new Image.asset(
                                  'images/user_btn2.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              new Text(
                                '账号安全',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              )
                            ]),
                      ),
                    ),
                    new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Profile()));
                      },
                      child: new Container(
                        padding: const EdgeInsets.only(top: 25, bottom: 25),
                        child: new Column(
                            children: <Widget>[
                              new Container(
                                margin: const EdgeInsets.only(bottom: 8),
                                child: new Image.asset(
                                  'images/user_btn3.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              new Text(
                                '我的资料',
                                style: new TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                ),
                              )
                            ]),
                      ),
                    )
              ])
            ],
          ),
        );
  }

//    反馈组件
      Widget response(BuildContext context){
          return  new Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1F1F34),
              ),
              margin: const EdgeInsets.only(top: 12),
              child: new Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(40.0),
                    1: FixedColumnWidth(280.0),
                    2: FixedColumnWidth(10.0),
                    3: FixedColumnWidth(30.0),
                  },
                  border: TableBorder(horizontalInside: BorderSide(color: const Color(0xFF363649), width: 0.5)),
                  children: <TableRow>[
                  new TableRow(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(right: 2, top: 15, bottom: 13 ),
                        child:  new Image.asset(
                          'images/user_btn5.png',
                          width: 23,
                          height: 23,
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(top: 18),
                        child:  new Text(
                          '喜欢我的人',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 17
                          ),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(top: 18),
                        child: new Text(
                          '0',
                          style: new TextStyle(
                              color: const Color(0xFFA83281)
                          ),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(right: 2,top: 20 ),
                        child:  new Image.asset(
                          'images/arrow_r.png',
                          width: 12,
                          height: 12,
                        ),
                      ),
                    ]
                  ),
                  new TableRow(
                      children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(right: 2 ,top: 15, bottom: 13 ),
                              child:  new Image.asset(
                                'images/user_btn6.png',
                                width: 25,
                                height: 25,
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(top: 18),
                              child: new GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => new Help()));
                              },
                              child: new Text(
                                '帮助与反馈',
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ),
                              ),
                            )
                            ),
                            new Text(
                              '',
                              style: new TextStyle(
                                  color: Colors.white
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(right: 2 , top: 20),
                              child:  new Image.asset(
                                'images/arrow_r.png',
                                width: 12,
                                height: 12,
                              ),
                            ),
                          ],
                  ),
                  new TableRow(
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(right: 2,top: 15, bottom: 13 ),
                          child:  new Image.asset(
                            'images/user_btn7.png',
                            width: 25,
                            height: 25,
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(top: 18),
                          child: new GestureDetector(
                            onTap: (){
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => new Intro()));
                            },
                            child:new Text(
                              '关于缘来是你',
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 17
                              ),
                            ),
                          ),
                        ),

                        new Text(
                          '',
                          style: new TextStyle(
                              color: Colors.white
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(right: 2, top: 20 ),
                          child:  new Image.asset(
                            'images/arrow_r.png',
                            width: 12,
                            height: 12,
                          ),
                        ),
                      ]
                  ),
                  ],
              )
          );
      }
    }
