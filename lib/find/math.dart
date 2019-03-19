import 'package:flutter/material.dart';

void main() {
  runApp(
      new Math()
  );
}

class Math extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('奇妙的数字缘分'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: Column(
          children: <Widget>[
              new Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 35),
                child: Text(
                  '输入一组 6 位数字即可参与猜数字匹配',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                  ),
                ),
              ),
              numberWidget(),

          ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }
}

  class numberWidget extends StatefulWidget{
    @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new numberWidgetState();
    }
  }


//点击数字的交互效果
  class numberWidgetState extends State<numberWidget>{

  //定义输入的数字集合
    List<int> numberList = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        MsgList(numberList),
//        MsgList([1,2,3,4,5,6]),
        lineList(),
        new Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          child: Text(
            '今天还能猜 2 次',
            style: TextStyle(
                fontSize: 16,
                color: const Color(0xFF9C9CA2)
            ),
          ),
        ),
        numport(),
        matchBtn()
      ],
    );
  }

  inputNum(int num){
    if (numberList.length < 6) {
      setState(() {
          print(num);
          numberList.add(num);
      });
    }
  }

  //创造数字输入框
  Widget show(int number) {
    return  new Container(
        child: Text(
          number.toString(),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),
        ),
    );
  }

  //输入框下面的横线
  Widget lineList () {
    Widget line = new Container(
      height: 1,
      width: 30,
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          color: const Color(0xFF464653)
      ),
    );
    List<Widget> lines = [];
    for (var j = 0; j < 6; j++) {
        lines.add(line);
    }
    Widget lineList = new Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: lines,
      ),
    );
    return lineList;
  }

  Widget MsgList(List<int> lists) {
    List<Widget> tiles = [];
    Widget MsgList;
    for (var i = 0; i < lists.length; i++) {
      tiles.add(
          show(lists[i])
      );
    }

    MsgList = new Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      margin: EdgeInsets.only(top:60),
      child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tiles
      ),
    );
    return MsgList;
  }

  //创造数字按键
  Widget numBtn(int number){
    return new GestureDetector(
      onTap: inputNum(number),
      child: new Container(
        alignment: Alignment.center,
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: const Color(0xFFCACACA)
        ),
        child: new Text(
          number.toString(),
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  //创造数字键盘
  Widget numport() {
    return new Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      margin: EdgeInsets.only(top:30, bottom: 10),
      height: 300,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              numBtn(1),
              numBtn(2),
              numBtn(3),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              numBtn(4),
              numBtn(5),
              numBtn(6),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              numBtn(7),
              numBtn(8),
              numBtn(9),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Container(
              alignment: Alignment.center,
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xFFCACACA)
                ),
                child: new Text(
                  "最近",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
//                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              numBtn(0),
              new Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xFFCACACA)
                ),
                child:  new Image.asset(
                  'images/delete.png',
                  width: 28,
                  height: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

//  匹配按钮
  Widget matchBtn() {
    return new Container(
        alignment: Alignment.center,
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFFF6F84),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Text(
          '开始匹配有缘人',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18
          ),
        ),
    );
  }
}
