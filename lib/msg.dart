import 'package:flutter/material.dart';
import './msg/msg.dart' as MsgDet;
import './msg/joinList.dart';

void main() {
  runApp(
      new Msg()
  );
}

class Msg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'ddyf',
//      home: new WallWidget(),
        home: new Scaffold(
          body: TarBar(),
      ),
    );
  }
}

class TarBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TabBarState();
  }
}

class TabBarState extends State<TarBar>
    with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
      return new DefaultTabController(
          length: 2,
          child: new Scaffold(
            appBar: new AppBar(
              title: new Text("点点缘分"),
              bottom: new TabBar(
                  labelColor: Colors.white,
                  labelPadding: const EdgeInsets.only(bottom:10),
                  tabs: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(bottom:10),
                      child: new Text(
                        '聊天',
                        style: new TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.only(bottom:10),
                      child: new Text(
                          '喜欢我',
                        style: new TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                controller: _tabController,
              ),
            ),
            body: new TabBarView(
                controller: _tabController,
                children: <Widget>[
                  MsgDet.Msg(),
                  JoinList(),
                ]
            ),
          )
      );
    }
  }