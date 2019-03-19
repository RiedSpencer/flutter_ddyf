import 'package:flutter/material.dart';

void main() {
  runApp(
      new Standard()
  );
}

class Standard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ddyf',
//      home: new WallWidget(),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('行为规范'),
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
          content('欢迎来到“点点缘分”缘分工具，如果您诚实、善良和尊重他人，这里永远欢迎您。如果您做不到这一点，您可能无法呆很久。我们的目标是让用户自由地展现自我，但不能冒犯他人。'),
          content('“点点缘分”上的每个人都遵循相同的标准。我们希望您体贴、三思而后行，在线上和线下都遵守我们的行为准则。说真的，不要让我们对您进行限制登陆，因为一旦这么做，将是无法挽回的。'),

          title('照片'),
          content('我们无法对不好的事情视而不见，也不想看到这种事情。'),
          content('严禁裸露或色情内容：我们提供“点点缘分”不是让您去炫耀自己最具煽动性的六张照片。我们是认真的。我们不要求您把头梳得整整齐齐，穿上节日的盛装；只要求尽量保持优雅并符合大众品味就行了。不能有裸体，不能有露骨的色情内容，不能有性玩具，不允许挑逗的姿势。违反这些准则的照片将被删除，最严重的情况下会导致帐户被删除。'),
          content('严禁暴力或露骨内容：我们不会容忍“点点缘分”上有暴力、露骨或淫秽的照片或包含仇恨等不言论的资料，一旦发现这样的内容，我们将立即删除。我们会删除“点点缘分”中那些我们认为不尊重他人的内容，用户也可能被限制登陆或删除。要谨记这一点。在“点点缘分”中发布狩猎照片时请保持克制并尊重他人，因为许多用户看到死去动物的照片时会很不舒服。'),
          content('严禁无人照看的儿童：标准超市规则适用。孩子都有成人陪伴-我们在这里谈的是您的个人资料照片。即使这是您七岁时的照片，人生中最可爱的时刻。这是为了保护孩子们。他们的安全比您曾经的可爱更重要 – 我们保留删除这些照片的权力。'),
          content('严禁电话号码或私人信息：我们不需要您的电话号码（验证除外）。请不要在个人资料上发布电话号码。“点点缘分”做了双重选择功能（两个人都互相选择了喜欢对方），所以个人信息可以私下分享，不应该公开传播。任何类型的个人信息，如果电话号码、地址、密码或财务信息，都会被删除，并可能导致您被“点点缘分”限制登陆或删除。'),

          title('消息'),
          content('要想被驱逐出这个平台，最快的方式是发出错误的消息。'),
          content('严禁不当：如果一句话您不会给别人当面说，那也不要在“点点缘分” 上说。请记住，您屏幕的另一端是一个人。尊重与您在“点点缘分”的每一个人。如果您对其他用户无礼、攻击、威胁或粗鲁，我们保留将您驱逐出“点点缘分”的权利。'),
          content('严禁仇恨：我们对仇恨言论坚守零容忍的政策。任何针对种族或民族、宗教、残疾、性别、年龄、国籍、性取向或性别认同煽动对个人或群体采取暴力的内容都被严格禁止，并可能导致您永久驱逐。'),
          content('严禁骚扰：我们严肃对待跟踪、威胁、霸凌、恐吓、侵犯隐私或披露他人个人信息的报告。这意味着不要对他人的个人资料或对话截屏并公开发布。针对表现出威胁、蓄意恶意或伤害其他用户的行为的用户，“点点缘分”保留将其驱逐的权利。')
        ],
    ),
  );

}

