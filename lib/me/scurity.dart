import 'package:flutter/material.dart';

void main() {
  runApp(
      new Scurity()
  );
}

class Scurity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('安全提示'),
          backgroundColor: const Color(0xFF181828),
        ),
        body: intro,
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

  static Widget title(String title) {
    return new Container(
      margin: const EdgeInsets.only(top: 15),
      child: new Text(
        title,
        style: new TextStyle(
            color: Colors.white,
            fontSize: 30
        ),
      ),
    );
  }

  static Widget content(String text) {
    return new Container(
      margin: const EdgeInsets.only(top:15),
      child: new Text(
        text,
        style: new TextStyle(
            color: Colors.white,
            fontSize: 19
        ),
      ),
    );
  }

  Widget intro = new Container(
    margin: const EdgeInsets.only(left: 5, right: 5),
    padding: const EdgeInsets.only(bottom: 15),
    child: new ListView(
      children: <Widget>[
        title('安全提示'),
        content('“点点缘分”拉近人与人的关系。到目前我们已经有很多次配对，我们的小程序一直在成长。'),
        content('“点点缘分”上有这么多人，所以用户的安全是我们的工作重心。我们知道第一次聊天或与人见面是令人无比兴奋的，不论是在线上、还是通过熟人认识或郊游。但您的安全是非常重要的。由于您掌控着自己的“点点缘分”体验，所以在聊天或见面时，不论线上还是线下，您都应遵循一些安全步骤。'),
        content('请阅读以下提示和信息，并建议您为自己的安全健康着想，一定要遵循这些准则。但个人安全始终只有您自己最有数，这些准则无法代替您的个人判断。'),

        title('在线行为'),
        content('保护您的财产，切勿汇款或分享财务信息'),
        content('绝不要理会任何支付的请求，即使有人声称事态紧急，特别是海外人士向您要钱或要求转账，遇到这种情况时请立即向我们举报。汇款就像送钱一样：汇款者可能遭受损失，而且几乎无法撤销交易或找回您的钱。'),
        content('保护您的个人信息'),

        title('如需进一步的帮助、支持或建议'),
        content('如果出现不好的情况，立即拨打110。紧急情况包括近期暴力或性暴力威胁、近期暴力或性暴力行为、或您的健康或他人的健康处于危险中。'),
        content('此外，如果您知道有人违反了我们的使用条款，请积极在此举报他们。')

      ],
    ),
  );

}

