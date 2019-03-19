import 'package:flutter/material.dart';
import './find.dart';
import './wall.dart';
import './msg.dart';
import './me.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
      new MyApp()
  );
  //沉浸式变色  对导航栏无效
  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(systemNavigationBarColor:Colors.transparent, systemNavigationBarDividerColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
         body: new Index(),
      ),
    );
  }
}

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin{

  int _currentIndex = 0;

  void _changeTab(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Wall(),
          Find(),
          Msg(),
          Me()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int a)=>_changeTab(a),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.gradient), title: Text('缘分墙'), backgroundColor: Colors.transparent),
          BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text('发现'), backgroundColor: Colors.transparent),
          BottomNavigationBarItem(icon: Icon(Icons.mode_comment), title: Text('消息'), backgroundColor: Colors.transparent),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我'), backgroundColor: Colors.transparent),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
      ),
    );
  }
}

