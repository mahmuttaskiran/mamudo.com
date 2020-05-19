import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/translations.dart';

class ProfileWidget extends StatelessWidget {
  final bool showActions;

  ProfileWidget({this.showActions = true});

  @override
  Widget build(BuildContext context) {
    if (!showActions) {
      return ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: ClipOval(
          child: Image.asset(
            "assets/images/profile_0.jpeg",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(tName.get(context)),
        subtitle: Text(tEmail.get(context)),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(height: 15),
        ClipOval(
          child: Image.asset(
            "assets/images/profile_0.jpeg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Text(tName.get(context), style: Theme.of(context).textTheme.headline5),
        SizedBox(height: 10),
        FadeAnimatedTextKit(
          text: tProfessions.map((e) => e.get(context)).toList(),
          totalRepeatCount: 10000,
          isRepeatingAnimation: true,
          textStyle: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.start,
          alignment: AlignmentDirectional.topStart, //, or Alignment.topLeft
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Text(
            tShortDesc.get(context),
            textAlign: TextAlign.center,
          ),
        ),
        if (showActions) SizedBox(height: 15),
        if (showActions)
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/about");
                  },
                  child: Text(
                    tAboutMeBtn.get(context),
                    style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor),
                  ),
                ),
                Expanded(child: SizedBox()),
                OutlineButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/blogs");
                  },
                  child: Text(
                    tBlogsTitle.get(context),
                  ),
                ),
                SizedBox(width: 10),
                OutlineButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cv");
                  },
                  child: Text(
                    tCvBtn.get(context),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        SizedBox(height: 10),
      ],
    );
  }
}
