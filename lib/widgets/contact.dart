import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        dense: true,
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.android),
        ),
        title: Text(tContactText.get(context)),
        trailing: IconButton(
          onPressed: () {
            launch("mailto:taskiranmahmutt@gmail.com");
          },
          icon: Icon(Icons.mail),
        ),
      ),
    );
  }
}
