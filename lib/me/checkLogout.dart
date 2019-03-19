import 'package:flutter/material.dart';
import '../main.dart';

void main() {
  runApp(
      new checkLogout()
  );
}

class checkLogout extends StatelessWidget {
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
      margin: const EdgeInsets.only(left: 20, right: 20),
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

                //注销缘分号
                new Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  alignment: Alignment.center,
                  child: new Column(
                    children: <Widget>[
                       new Container(
                         margin: const EdgeInsets.only(bottom: 20),
                         child: new Image.asset(
                           'images/acc_btn4.png',
                           width: 35,
                           height: 35,
                         ),
                       ),
                        Text(
                          '注销缘分号',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                    ],
                  ),
                ),

                content('注销帐号后，您将失去您在本程序内的所有缘分数据哦。 '),
                content('申请注销后，请不要再继续使用小程序，系统将在2个工作日内对您对帐号进行注销处理。'),
                content('注销完成后，你将可以再次使用微信登录小程序，不过将会是全新的帐号。'),
              ],
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(bottom: 15, top: 15),
              decoration: BoxDecoration(
                  color: const Color(0xFF1F1F34)
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          '我考虑清楚了，我要',
                          style: TextStyle(
                              color: const Color(0xFFBBBBC2)
                          ),
                        ),
                        new GestureDetector(
                          onTap: (){
                            print('testaaa');
                          },
                          child: new Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 5),
                              width: 135,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFF6F84),
                                  borderRadius: BorderRadius.circular(25.0)
                              ),
                              child: new Text(
                                '申请注销缘分号',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                ),
                              )
                          ),
                        ),
                      ],
                    )
          ],
      ),
    )]));
  }

}

