import 'package:flutter/material.dart';
import './image.dart';
//import 'package:image_picker/image_picker.dart';

void main() {
  runApp(
      new Profile()
  );
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('我的资料'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: new ListView(
          children: <Widget>[
            account1(context)
          ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

//  列表协议
  Widget account1(BuildContext context){
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        //个人照片列表
        new Container(
          margin: new EdgeInsets.only(bottom:15),
          padding: new EdgeInsets.only(left:20, right: 20),
          decoration: BoxDecoration(
            color: const Color(0xFF1F1F34),
          ),
          child: SelectImage(),
          /*child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(bottom:10),
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new Image.asset(
                        'images/warn.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    new Text(
                      '请上传真实照片哦，不同场景的照片以展示更有魅力的自己',
                      style: TextStyle(
                          color: const Color(0xFF8C8C92),
                          fontSize: 13
                      ),
                    )
                  ],
                ),
              ),

              //选择照片框
              new Container(
                margin: new EdgeInsets.only(bottom:10),
                child: new Column(
                  children: <Widget>[
                    new Container(
                      width: 115,
                      height: 160,
                      decoration: BoxDecoration(
                          color: const Color(0xFFD8D8D8),
                          borderRadius: BorderRadius.circular(6.0)
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            child: new Image.asset(
                              'images/upload.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                          new Text(
                            '上传照片',
                            style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF575757)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Text(
                'ps: 点击可更换图片，长按可拖曳图片进行修改排序',
                style: TextStyle(
                    color: const Color(0xFF8C8C92),
                    fontSize: 13
                ),
              )
            ],
          ),*/
        ),

        //个人信息资源列表
        new Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1F1F34),
          ),
          child: new Table(
            columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(150.0),
              1: FixedColumnWidth(210.0),
            },
            border: TableBorder(horizontalInside: BorderSide(color: const Color(0xFF74747E), width: 1)),
            children: <TableRow>[
              //姓名
              new TableRow(
                children: <Widget>[
                  new Container(
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: new Text(
                        '叫我',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      )
                  ),
                  new Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 15),
                    margin: const EdgeInsets.only(top: 18),
                    child: new Text(
                      '饶美丽',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),

              //性别
              new TableRow(
                children: <Widget>[
                  new Container(
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: new Text(
                        '我是',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      )
                  ),
                  new Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 15),
                      margin: const EdgeInsets.only(top: 10),
                      child: ParentSexWidget()
                  ),
                ],
              ),

              //生日
              new TableRow(
                children: <Widget>[
                  new Container(
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: new Text(
                        '生日',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      )
                  ),
                  new Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 15),
                      margin: const EdgeInsets.only(top: 18),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            '公历 2000 年01月01日',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(left: 8),
                            child:  new Image.asset(
                              'images/arrow_r.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),

              //所在地
              new TableRow(
                children: <Widget>[
                  new Container(
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: new Text(
                        '所在地',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      )
                  ),
                  new Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 15),
                      margin: const EdgeInsets.only(top: 18),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            '湖南省',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(left: 8),
                            child:  new Image.asset(
                              'images/arrow_r.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),

              //职业
              new TableRow(
                children: <Widget>[
                  new Container(
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: new Text(
                        '职业',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      )
                  ),
                  new Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(top: 18),
                      padding: const EdgeInsets.only(right: 15),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            '需要选择你的职业',
                            style: TextStyle(
                                color: const Color(0xFF84848F),
                                fontSize: 18
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(left: 8),
                            child:  new Image.asset(
                              'images/arrow_r.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),

              //标签
              new TableRow(
                children: <Widget>[
                  new Container(
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: new Text(
                        '标签',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      )
                  ),
                  new Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(top: 18),
                      padding: const EdgeInsets.only(right: 15),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            '需要选择你的标签',
                            style: TextStyle(
                                color: const Color(0xFF84848F),
                                fontSize: 18
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(left: 8),
                            child:  new Image.asset(
                              'images/arrow_r.png',
                              width: 15,
                              height: 15,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),

        //保存按钮
        new Container(
          margin: const EdgeInsets.only(top:20),
          child: new GestureDetector(
            /*onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new MyApp()));
            },*/
            child: new Container(
                alignment: Alignment.center,
                width: 125,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color(0xFFFF6F84),
                    borderRadius: BorderRadius.circular(25.0)
                ),
                child: new Text(
                  '保存',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                )
            ),
          ),
        )
      ],
    );
  }
}


//进行性别组件管理 [子父类状态管理]
class SexWidgetState extends StatelessWidget {
  SexWidgetState({Key key, this.chooseSex, this.onChanged, this.sex ,this.sex_name}) : super(key: key);
  final int chooseSex;
  final ValueChanged<int> onChanged;
  final String sex_name;
  final int sex;

  _changeSex(sex) {
    onChanged(sex);
  }

  @override
  Widget build (BuildContext context) {
    return GestureDetector(
      onTap: ()=>_changeSex(sex),
      child: new Container(
        alignment: Alignment.center,
        width: 65,
        height: 30,
        decoration: BoxDecoration(
            color: (chooseSex == sex) ? const Color(0xFFFF6F84) : const Color(0xFF1F1F34),
            borderRadius: BorderRadius.circular(25.0)
        ),
        child: new Text(
          sex_name,
          style: TextStyle(
              color: Colors.white ,
              fontSize: 18
          ),
        ),
      ),
    );
  }
}

// 构造父构件
class ParentSexWidget extends StatefulWidget {
  @override
  _ParentSexWidgetState createState() {
    return new _ParentSexWidgetState();
  }
}

class _ParentSexWidgetState extends State<ParentSexWidget> {
  int _sex = 1;

  void _handleSexChange(int sex) {
    setState(() {
      _sex = sex;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 30,
      width:130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0)
      ),
      child: new Row(
        children: <Widget>[
          new SexWidgetState(chooseSex: _sex, onChanged: _handleSexChange, sex: 1, sex_name: '男生'),
          new SexWidgetState(chooseSex: _sex, onChanged: _handleSexChange, sex: 2, sex_name: '女生'),
        ],
      ),
    );
  }
}


