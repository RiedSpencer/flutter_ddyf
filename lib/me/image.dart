import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'asset_view.dart';

void main() {
  runApp(
      new SelectImage()
  );
}


class SelectImage extends StatefulWidget {
  @override
  _SelectImageState createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {

     List<Asset> requestList = [];
  //选择图片并上传
  _pickImageUpLoad() async {
    //通过MultiImagePicker插件从本地相册选取图片，配置一次最多选择12张，禁止摄像头拍照
    List<Asset> list = await MultiImagePicker.pickImages(
      maxImages: 300,
      enableCamera: true,
    );
    setState(() {
      requestList = list;
    });

  }

  Widget ImageList () {
    //得到长度
    var len = this.requestList.length;
    if (len == 0) {
      return new Text('没有图片');
    }

    //遍历图片列表

    List<Widget> tiles1 = [];
    var mod = len%3;
    print(len);
    print(mod);
    var count = (mod > 0) ? len~/3+1 : len~/3;
    print( len~/3);
    print(count);
    for (var j=0; j< count; j++) {
      List<Widget> tiles = [];
      for(var i=0; i < 3; i++) {
        var index = j*3+i;
        if (index == len) {
          break;
        }
        Asset asset = requestList[index];
        tiles.add(
            AssetView(
              index,
              asset,
              key: UniqueKey(),
            )
        );
      }
      tiles1.add(
        new Row(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tiles,
        )
      );
    }

    Widget picList = new Container(
      child: new Column(
        children: tiles1,
      )
    );
    return picList;
  }


  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: requestList == [] ? "暂无图片" : ImageList()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickImageUpLoad,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );*/

    return Container(
      child: new GestureDetector(
        onTap:  _pickImageUpLoad,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            requestList == [] ? "暂无图片" : ImageList(),
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
            ),
          ],
        ),
      ),
    );
  }
}