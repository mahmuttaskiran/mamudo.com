import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mamudo_com/models/sensitive_string.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  final desc = LanguageSensitiveString.en_tr(
    "Do you looking for a mobile application developer? Feel free to contact me: taskiranmahmutt@gmail.com",
    "Bir mobil uygulama geliştiricisine mi ihtiyaç duyuyorsun? Benimle iletişime geçin: taskiranmahmutt@gmail.com",
  );

  final sendButton = LanguageSensitiveString.en_tr("Send a mail", "Mail at");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(FontAwesomeIcons.envelopeOpenText),
        ),
        title: Text(desc.get(context)),
        trailing: FlatButton.icon(
          onPressed: () {
            launch("mailto:taskirammahmutt@gmail.com");
          },
          icon: Icon(Icons.send),
          label: Text(
            sendButton.get(context),
          ),
        ),
      ),
    );
  }
}
