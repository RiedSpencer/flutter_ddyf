import 'package:flutter/material.dart';
import './ucontract.dart';
import './standard.dart';
import './scurity.dart';

void main() {
  runApp(
      new Help()
  );
}

class Help extends StatelessWidget {
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
              iconBox,
              ListHelp(context)
            ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

//  图标
  Widget iconBox = new Container(
      padding: const EdgeInsets.only(top: 40, bottom: 40),
      child: new Column(
                children: <Widget>[
                  new Image.asset(
                    'images/logo.png',
                    width: 120,
                    height: 120,
                  ),
                  new Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: new Text(
                      '点点缘分',
                      style:  new TextStyle(
                          fontSize: 26,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
            )
  );

//  列表协议
  Widget ListHelp(BuildContext context){
    return new Container(
        margin: const EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: const Color(0xFF74747E), width: 1))
        ),
        child: new Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(300.0),
            1: FixedColumnWidth(30.0),
          },
          border: TableBorder(horizontalInside: BorderSide(color: const Color(0xFF74747E), width: 1)),
          children: <TableRow>[
            new TableRow(
              children: <Widget>[
                new Container(
                    margin: const EdgeInsets.only(top: 18, bottom: 25),
                    child: new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Help()));
                      },
                      child: new Text(
                        '帮助与反馈',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      ),
                    )
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
                    margin: const EdgeInsets.only(top: 18, bottom: 25),
                    child: new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new uContract()));
                      },
                      child: new Text(
                        '用户协议',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      ),
                    )
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
                    margin: const EdgeInsets.only(top: 18, bottom: 25),
                    child: new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Standard()));
                      },
                      child: new Text(
                        '行为规范',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      ),
                    )
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
                    margin: const EdgeInsets.only(top: 18, bottom: 25),
                    child: new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Scurity()));
                      },
                      child: new Text(
                        '安全提示',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      ),
                    )
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
        )
    );
  }
}

