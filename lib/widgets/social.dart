import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLink {
  final String name;
  final String link;
  final IconData icon;
  final Color color;

  const SocialLink(this.icon, this.name, this.link, this.color);
}

const socialLinks = [
  SocialLink(FontAwesomeIcons.github, "Github",
      "https://github.com/mahmuttaskiran", Colors.black),
  SocialLink(FontAwesomeIcons.medium, "Medium",
      "https://medium.com/@taskiranmahmut", Colors.black),
  SocialLink(FontAwesomeIcons.linkedin, "LinkedIn",
      "https://www.linkedin.com/in/mahmutaskiran/", Colors.blue),
  SocialLink(
      FontAwesomeIcons.youtubeSquare,
      "YouTube",
      "https://www.youtube.com/channel/UCqtwGBGisBLNE7WK-V7esUg?view_as=subscriber",
      Colors.red),
];

class SocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            for (final s in socialLinks) SocialLinkWidget(social: s),
          ],
        ),
      ),
    );
  }
}

class SocialLinkWidget extends StatelessWidget {
  final SocialLink social;

  SocialLinkWidget({this.social});

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {
        launch(social.link);
      },
      icon: Icon(
        social.icon,
        color: social.color,
      ),
      label: Text(social.name),
    );
  }
}
