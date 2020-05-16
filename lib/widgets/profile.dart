import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mamudo_com/utils/localization.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        Text(AppLocalizations.of(context).map["person"],
            style: Theme.of(context).textTheme.headline5),
        SizedBox(height: 10),
        FadeAnimatedTextKit(
          text: [
            "Mobile Application Developer",
            "Runner",
            "Thinker",
            "Blogger",
          ],
          totalRepeatCount: 10000,
          isRepeatingAnimation: true,
          textStyle: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.start,
          alignment: AlignmentDirectional.topStart, //, or Alignment.topLeft
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
