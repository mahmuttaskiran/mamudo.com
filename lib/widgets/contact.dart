import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.mail),
        ),
        title: Text(tContactText.get(context)),
        trailing: IconButton(
          onPressed: () {
            launch("mailto:taskirammahmutt@gmail.com");
          },
          icon: Icon(Icons.send),
        ),
      ),
    );
  }
}
