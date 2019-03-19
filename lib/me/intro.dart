import 'package:flutter/material.dart';

void main() {
  runApp(
      new Intro()
  );
}

class Intro extends StatelessWidget {
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
        body: intro,
        backgroundColor: const Color(0xFF181828),
      ),
    );
  }

  static Widget content(String text) {
    return new Container(
      margin: const EdgeInsets.only(bottom:15, top:10),
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
    child: new ListView(
      children: <Widget>[
        content('“点点缘分”是助力单身青年遇见美好缘分的工具。通过营造文明、健康、理性的缘分环境，倡导真诚、友好的缘分理念，扩大单身青年的缘分圈子，同时为单身青年的相遇创造更多的机会和条件。'),
        content('“点点缘分”的主要特点是免费、有趣、安全，所有功能完全免费，让用户突破时间、空间、距离等限制，在“缘分墙”上就能查看到众多用户的信息资料“缘分卡”，通过人与人之间的互动行为匹配到双方都感兴趣的人进行沟通交流，能有效的帮助用户在脱单过程中节约时间、降低成本、提高效率。'),
        content('“点点缘分”建立了双向确认的匹配模式，当两个人互相感兴趣并且同时选择了喜欢对方才会配对成功，只有配对成功才能进行交流沟通。这种有趣的相遇方式浪漫而温馨，在配对聊天前就确认了相互都感兴趣，能让双方在沟通交流时不再尴尬、更加自信。我们还提供了多种趣味匹配功能，为人与人之间的相遇创造更多的机会和条件。'),
        content('“点点缘分”的所有用户必须通过手机认证才能进行匹配，为保护好用户安全不仅有 “行为规则”和“安全提示”等文档，尤其在用户交流时都会提醒双方注意隐私保护等安全提醒，并还在多处设置了举报入口，严格执行举报必究的原则与机制来纯净网络环境。'),
        content('愿所有的相遇都是美好，愿所有的有缘人终成眷属。'),
        content('点点缘分，不止于相遇！')
      ],
    ),
  );

}

