import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';


void main() {
  runApp(
      new PerMatch()
  );
}

class PerMatch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('十分有缘'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: new Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top:180, bottom: 50),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Opacity(
                  opacity: 0.8,
                  child: new Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2F265A),
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: new Column(
                      children: <Widget>[
                        timerWidget(),
                        new Text(
                            '后开始匹配，赶快报名参与！',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                        ),
                      ],
                    ),
                  ),
              ),
              new Container(
                alignment: Alignment.center,
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6F84),
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child: Text(
                  '我要参与',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}

//定时器组件
  class timerWidget extends StatefulWidget {
      @override
      State<StatefulWidget> createState() {
       // TODO: implement createState
        return  _timerWidgetState();
      }
  }

  class _timerWidgetState extends State<timerWidget> {

    int hour = 23;
    int min = 60;
    int second = 60;
    Timer _timer;

    //初始化函数
    @override
    void initState()
    {
      startTime();
      //测试网页请求
      _getbaidu();
    }

    _getbaidu() async {
      var url = 'http://www.baidu.com';
      var httpClient = new HttpClient();

      String result;
      try {
        var request = await httpClient.getUrl(Uri.parse(url));
        var response = await request.close();
        if (response.statusCode == HttpStatus.OK) {
          var json = await response.transform(utf8.decoder).join();
          print('this is baidu');
          print(json);
        } else {
          result =
          'Error getting IP address:\nHttp status ${response.statusCode}';
        }
      } catch (exception) {
        result = 'Failed getting IP address';
      }
    }

    @override
    Widget build(BuildContext context) {
        return new Container(
          margin: EdgeInsets.only( top: 25, bottom: 13),
          child:new Text(
                hour.toString()+"时 ："+min.toString()+"分 ： "+second.toString()+"秒",
                style: TextStyle(
                    color: const Color(0xFFEC6880),
                    fontWeight: FontWeight.bold,
                    fontSize: 28
                ),
              ),
        );

    }

    //开始倒计时
    void startTime() {
      _timer = new Timer.periodic(const Duration(seconds: 1), (timer){
        setState(() {
          //判断时分秒
          if (second > 0) {
            second--;
            return;
          }

          if (min > 0) {
            min--;
            second = 60;
            return;
          }

          if (hour > 0) {
            hour--;
            min = 60;
            second = 60;
            return;
          }

          _timer.cancel();
        });
      });
    }
  }

