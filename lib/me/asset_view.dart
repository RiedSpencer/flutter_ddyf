import 'package:flutter/material.dart';
import 'package:multi_image_picker/asset.dart';

class AssetView extends StatefulWidget {
  final int _index;
  final Asset _asset;

  AssetView(
      this._index,
      this._asset, {
        Key key,
      }) : super(key: key);

  @override
  State<StatefulWidget> createState() => AssetState(this._index, this._asset);
}

class AssetState extends State<AssetView> {
  int _index = 0;
  Asset _asset;
  AssetState(this._index, this._asset);

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  void _loadImage() async {
    await this._asset.requestThumbnail(110, 190, quality: 50);
    if (this.mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (null != this._asset.thumbData) {
      return new Container(
        width: 100,
        height: 200,
        margin: EdgeInsets.only(right: 6),
        child: Image.memory(
          this._asset.thumbData.buffer.asUint8List(),
          gaplessPlayback: true,
        ),
      );
    }

    return Text(
      '${this._index}',
      style: Theme.of(context).textTheme.headline,
    );
  }
}