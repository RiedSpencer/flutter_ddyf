import 'package:flutter/material.dart';
import './private.dart';
import './logout.dart';
import 'package:cupertino_range_slider/cupertino_range_slider.dart';

void main() {
  runApp(
      new Choice()
  );
}

class Choice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('筛选设置'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: new Column(
          children: <Widget>[
            choice(context),
            ageSlide(context),
          ],
        ),
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

//  筛选设置
  Widget choice(BuildContext context){
    return new Container(
//      margin: const EdgeInsets.only(left: 5, right: 10),
//      padding: const EdgeInsets.only(left: 18, right: 30),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F34)
      ),
      child: new Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(120.0),
          1: FixedColumnWidth(240.0),
        },
        border: TableBorder(horizontalInside: BorderSide(color: const Color(0xFF181828), width: 20)),
        children: <TableRow>[
          new TableRow(
            children: <Widget>[
              new Container(
                  margin: const EdgeInsets.only(top: 18, bottom: 20),
                  padding: const EdgeInsets.only(left: 18, top: 5, bottom: 5),
                  child: new GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => new Private()));
                    },
                    child: new Text(
                      '位置',
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 19
                      ),
                    ),
                  )
              ),
              new Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.only(right: 30),
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Text(
                          '中国',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                        ),
                    ),
                    new Text(
                      '我的当前位置',
                      style: TextStyle(
                        color: const Color(0xFF8A8A95)
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
          new TableRow(
            children: <Widget>[
              new Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  padding: const EdgeInsets.only(left: 18, top: 5, bottom: 2),
                  child: new GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => new Private()));
                    },
                    child: new Text(
                      '查看性别',
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 19
                      ),
                    ),
                  )
              ),
              new Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.only(right: 30),
                  child: ParentSexWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget ageSlide(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 18),
        decoration: BoxDecoration(
        color: const Color(0xFF1F1F34)
      ),
      child: Column(
        children: <Widget>[
          new Container(
            child: RangeSliderItem(
              title: 'age',
              initialMinValue: 22,
              initialMaxValue: 35,
              onMinValueChanged: (v){
              },
              onMaxValueChanged: (v){
              },
            ),
          )
        ],
      )
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
          width: 47,
          height: 30,
          decoration: BoxDecoration(
            color: (chooseSex == sex) ? const Color(0xFFFF6F84) : const Color(0xFF181828),
            borderRadius: BorderRadius.circular(25.0)
          ),
          child: new Text(
            sex_name,
            style: TextStyle(
              color: (chooseSex == sex) ? Colors.white : const Color(0xFF8C8C94),
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
      int _sex = 0;

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
          width:141,
          decoration: BoxDecoration(
            color: const Color(0xFF181828),
            borderRadius: BorderRadius.circular(25.0)
          ),
          child: new Row(
            children: <Widget>[
              new SexWidgetState(chooseSex: _sex, onChanged: _handleSexChange, sex: 1, sex_name: '男生'),
              new SexWidgetState(chooseSex: _sex, onChanged: _handleSexChange, sex: 2, sex_name: '女生'),
              new SexWidgetState(chooseSex: _sex, onChanged: _handleSexChange, sex: 0, sex_name: '全部'),
            ],
          ),
        );
      }
  }


//年龄区间滑动
class RangeSliderItem extends StatefulWidget {
  final String title;
  final int initialMinValue;
  final int initialMaxValue;
  final ValueChanged<int> onMinValueChanged;
  final ValueChanged<int> onMaxValueChanged;

  const RangeSliderItem({Key key, this.title, this.initialMinValue, this.initialMaxValue, this.onMinValueChanged, this.onMaxValueChanged}) : super(key: key);

  @override
  _RangeSliderItemState createState() => _RangeSliderItemState();
}

class _RangeSliderItemState extends State<RangeSliderItem> {
  int minValue;
  int maxValue;

  @override
  void initState() {
    super.initState();
    minValue = widget.initialMinValue;
    maxValue = widget.initialMaxValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(120.0),
            1: FixedColumnWidth(240.0),
          },
          border: TableBorder(horizontalInside: BorderSide(color: const Color(0xFF181828), width: 20)),
          children: <TableRow>[
            new TableRow(
              children: <Widget>[
                new Container(
                    margin: const EdgeInsets.only(top: 18, bottom: 20),
                    padding: const EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    child: new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => new Private()));
                      },
                      child: new Text(
                        '年龄',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 19
                        ),
                      ),
                    )
                ),
                new Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(right: 30),
                    child: new Text(
                      this.minValue.toString()+' ～ '+this.maxValue.toString()+' 岁',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
        FilterItemHolder(
          title: widget.title,
          value: '$minValue-$maxValue',
          child: CupertinoRangeSlider(
            minValue: minValue.roundToDouble(),
            maxValue: maxValue.roundToDouble(),
            activeColor: const Color(0xFFFF6F84),
            min: 18,
            max: 60,
            onMinChanged: (minVal){
              setState(() {
                minValue = minVal.round();
                if(widget.onMinValueChanged != null) {
                  widget.onMinValueChanged(minValue);
                }
              });
            },
            onMaxChanged: (maxVal){
              setState(() {
                maxValue = maxVal.round();
                if(widget.onMaxValueChanged != null) {
                  widget.onMaxValueChanged(maxValue);
                }
              });
            },
          ),
        )
      ],
    );
  }
}


class FilterItemHolder extends StatelessWidget {
  final String title;
  final String value;
  final Widget child;

  FilterItemHolder({Key key, this.title, this.value = '', this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 10.0, right: 20.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(5.0)),
          ),
          child: Container(
            height: 30.0,
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: child,
            ),
          ),
        )
      ],
    );
  }

}