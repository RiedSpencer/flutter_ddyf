import 'package:flutter/material.dart';

void main() {
  runApp(
      new JoinList()
  );
}

class JoinList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        body: new Column(
          children: <Widget>[
            SuperList(),
          ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

  Widget SuperList() {
    List<Widget> tiles = [];
    Widget SuperList;
    for (var i = 0; i < 5; i++) {
      tiles.add(
          new Row(
            children: <Widget>[
              SuperRow()
            ],
          )
      );
    }

    SuperList = new Column(
      children: tiles
    );
    return SuperList;
  }

  Widget SuperRow(){
    return new Container(
      margin: const EdgeInsets.only(left: 15),
      height: 65,
      child : new Row(
      children: <Widget>[
        new Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: new Image.network(
              'https://picmina.007168.net/ddyf/user_upload/1_man.jpg',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(left: 10,top: 13),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(right: 10 ),
                      child: new Text(
                        '李花花',
                        style:  new TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                    new Container(
                      child: new Text(
                        '对你感兴趣哦',
                        style:  new TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        ),
                      ),
                    )
                  ],
                )
                /*
                ),*/
              ),
               new Container(
                  margin: const EdgeInsets.only(top:3 ),
                  child: new Text(
                      '1小时',
                      style: new TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
               )
            ],
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(left: 35, bottom:10 ),
          child: new MaterialButton(
            onPressed: null,
            color: const Color(0xFFFF6F84),
            textColor: Colors.white,
            height: 35,
            minWidth: 76,
            child: Text(
              '去看看',
              style: new TextStyle(
                fontSize: 18,
                color: Colors.white
              ),

            ),
          ),
        )
    ],
    ),
    );
  }


}