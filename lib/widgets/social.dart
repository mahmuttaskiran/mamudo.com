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
      "https://github.com/mahmuttaskiran", Colors.grey),
  SocialLink(FontAwesomeIcons.medium, "Medium",
      "https://medium.com/@taskiranmahmut", Colors.orangeAccent),
  SocialLink(FontAwesomeIcons.linkedin, "LinkedIn",
      "https://www.linkedin.com/in/mahmutaskiran/", Colors.blue),
  SocialLink(
      FontAwesomeIcons.squareYoutube,
      "YouTube",
      "https://www.youtube.com/channel/UCqtwGBGisBLNE7WK-V7esUg/playlists",
      Colors.red),
];

class SocialLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            for (final s in socialLinks)
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SocialLinkWidget(social: s)),
          ],
        ),
      ),
    );
  }
}

class SocialLinkWidget extends StatelessWidget {
  final SocialLink? social;

  SocialLinkWidget({this.social});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        launchUrl(Uri.parse(social!.link));
      },
      icon: Icon(
        social!.icon,
        color: social!.color,
      ),
      label: Text(social!.name),
    );
  }
}
