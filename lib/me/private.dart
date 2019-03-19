import 'package:flutter/material.dart';

void main() {
  runApp(
      new Private()
  );
}

class Private extends StatelessWidget {
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
        body: intro,
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

  Widget intro = new Container(
    margin: const EdgeInsets.only(left: 10, right: 15),
    padding: const EdgeInsets.only(top:10),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: new Text(
              '私密帐户',
              style: new TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          ),
          new Container(
            child: new Row(
              children: <Widget>[
                new Container(
                  width: 275,
                  child: new Text(
                      '开启私密帐户后，只有我喜欢的人才能发现我，匹配机会很小。',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                  ),
                ),
                new Container(
                  child: Switch(
                      value: false,
                      activeColor: const Color(0xFFFFFFFF),
                      activeTrackColor: const Color(0xFFFF6F84),
                      inactiveTrackColor: const Color(0xFFFFFFFF),
                      onChanged:(bool val) {
//                        print('check');
                      }
                  ),
                )
              ],
            ),
          )
        ],
    ),
  );

}

