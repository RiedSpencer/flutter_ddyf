import 'package:flutter/material.dart';

void main() {
  runApp(
      new uContract()
  );
}

class uContract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('用户协议'),
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
        title('一、接受条款'),
        content('“点点缘分“工具（以下简称“点点缘分”）由德义网络科技（长沙）有限公司（以下简称“德义网络”）开发，根据以下服务条款为您提供服务。这些条款可由“点点缘分”随时更新，且毋须另行通知。“点点缘分”使用协议（以下简称“使用协议”）一旦发生变动，“点点缘分”将在网页上公布修改内容。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当您使用“点点缘分”服务时，您应遵守“点点缘分”随时公布的与该服务相关的指引和规则。前述所有的指引和规则，均构成本使用协议的一部分。'),
        content('您在使用“点点缘分”提供的各项服务之前，应仔细阅读本使用协议。如您不同意本使用协议及/或随时对其的修改，请您立即停止使用“点点缘分”所提供的全部服务；您一旦使用“点点缘分”服务，即视为您已了解并完全同意本使用协议各项内容，包括“点点缘分”对使用协议随时所做的任何修改，并成为“点点缘分”用户（以下简称“用户”）。'),

        title('二、遵守法律'),
        content('您同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用您的密码和您的帐号使用本服务的任何行为及其结果承担全部责任。如您的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由您承担全部法律责任。'),
        content('同时如果“点点缘分”有理由认为您的任何行为，包括但不限于您的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，“点点缘分”可在任何时候不经任何事先通知终止向您提供服务。'),

        title('三、您的注册义务'),
        content('为了能使用本服务，您需要注册“点点缘分”帐号应当使用手机号码绑定注册，请用户使用尚未与“点点缘分”帐号绑定的手机号码，以及未被“点点缘分”封禁的手机号码注册“点点缘分”帐号。“点点缘分”可以根据用户需求或产品需要对帐号注册和绑定的方式进行变更，而无须事先通知用户。'),
        content('“点点缘分”系基于地理位置的移动社交产品，用户注册时应当授权“点点缘分”公开及使用其地理位置信息方可成功注册“点点缘分”帐号。故用户完成注册即表明用户同意“点点缘分”提取、公开及使用用户的地理位置信息。如用户需要终止向其他用户公开其地理位置信息，可自行设置为隐身状态。'),
        content('鉴于“点点缘分”帐号的注册方式，您同意“点点缘分”在注册时将使用您提供的手机号码及/或自动提取您的手机号码及自动提取您的手机设备识别码等信息用于注册。'),
        content('在用户注册及使用本服务时，“点点缘分”需要搜集能识别用户身份的个人信息以便“点点缘分”可以在必要时联系用户，或为用户提供更好的使用体验。“点点缘分”搜集的信息包括但不限于用户的姓名、性别、年龄、出生日期、身份证号、地址、学校情况、公司情况、所属行业、兴趣爱好、常出没的地方、个人说明；“点点缘分”同意对这些信息的使用将受限于第三条用户个人隐私信息保护的约束。'),
      ],
    ),
  );

}

