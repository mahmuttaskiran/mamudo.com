import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLink {
  final String name;
  final String link;
  final IconData icon;
  final Color color;
  const SocialLink(this.icon, this.name, this.link, this.color);
}

const socialLinks = [
  SocialLink(FontAwesomeIcons.linkedin, "LinkedIn", "", Colors.blue),
  SocialLink(FontAwesomeIcons.youtubeSquare, "YouTube", "", Colors.red),
  SocialLink(FontAwesomeIcons.medium, "Medium", "", Colors.black),
  SocialLink(FontAwesomeIcons.github, "Github", "", Colors.black),
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
      onPressed: () {},
      icon: Icon(
        social.icon,
        color: social.color,
      ),
      label: Text(social.name),
    );
  }
}
