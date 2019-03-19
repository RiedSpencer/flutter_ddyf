import 'package:flutter/material.dart';
import '../main.dart';
import './checkLogout.dart';

void main() {
  runApp(
      new Logout()
  );
}

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('账号安全'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: intro(context),
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

  static  Widget content(String cont) {
    return new Container(
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: new Text(
        cont,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17
        ),
      ),
    );
  }

  Widget intro (BuildContext context) {
    return  new Container(
      margin: const EdgeInsets.only(top: 50),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                content('hi，咱们已经在一起度过了8天的美好时光，'),
                content('还不知疲倦的上传过1张照片，满满的都是好缘分'),
                content('现在如果注销帐号，所有的好缘分将会被删除，所有的有缘人将会被清空，所有的信息将不可恢复。'),
              ],
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(bottom: 25, top: 25),
              decoration: BoxDecoration(
                  color: const Color(0xFF1F1F34)
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new checkLogout()));
                    },
                    child: new Container(
                        alignment: Alignment.center,
                        width: 125,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFF757575),
                            borderRadius: BorderRadius.circular(25.0)
                        ),
                        child: new Text(
                          '继续注销',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        )
                    ),
                  ),
                  new GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => new MyApp()));
                    },
                    child: new Container(
                        alignment: Alignment.center,
                        width: 125,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFF6F84),
                            borderRadius: BorderRadius.circular(25.0)
                        ),
                        child: new Text(
                          '返回缘分墙',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        )
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }

}

