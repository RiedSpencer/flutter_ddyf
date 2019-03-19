import 'package:flutter/material.dart';
import './find/math.dart';
import './find/per_match.dart';

void main() {
  runApp(
      new Find()
  );
}

class Find extends StatelessWidget {
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
            new Container(
              margin: const EdgeInsets.only(top:15, left: 15, bottom: 10),
              child: new Align(
                alignment: Alignment.centerLeft,
                child: new Text(
                  '缘，妙不可言',
                  style: new TextStyle(
                    fontSize: 18,
                    color: Colors.white
                  ),
                ),
              )
            ),
            stack(context, 'images/Bitmap.jpg', '数字缘分', '谁与你输入的数字相同就配对,谁会与你心有灵犀', new Math()),
            stack(context, 'images/Bitmap2.jpg', '十分有缘', '报名后每晚11点准时配对,谁会是你的不期而遇?', new PerMatch()),
          ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
    }


    //卡片
    static Container card (String pic_name) {
      return  new Container(
        width: 400,
        height: 200,
        margin: const EdgeInsets.only(bottom:20, left: 10, right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: new Image.asset(
            pic_name,
            width: 400,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    //文字
  static Container description(String Title, String cont) {
    return new Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(bottom: 38, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            Title,
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
//              fontWeight: FontWeight.bold
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top:10),
            child: new Text(
                    cont,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white
                    ),
                  )
          )
        ],
      ),
    );
  }

  //      浮动组件
  Widget stack (BuildContext context,String pic_name, String title, String cont, Object route){
    return new GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => route));
          },
        child: new Stack(
          alignment: const FractionalOffset(1, 0.99),
          children: <Widget>[
            card(pic_name),
            description(title, cont)
          ],
        ),
    );
  }

  }