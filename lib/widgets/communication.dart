import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/communications.dart';
import 'package:mamudo_com/utils/localization.dart';

class Communications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[700],
          child: ListTile(
            title: Center(
              child: Text(AppLocalizations.of(context).map["communication"]),
            ),
            dense: false,
          ),
        ),
        ...[
          for (final c in communications)
            ListTile(
              dense: true,
              title: Text(c.languageName.get(context)),
              subtitle: Text(c.knowledge.get(context)),
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                child: Center(
                  child: Text(c.locale.languageCode.toUpperCase()),
                ),
              ),
            ),
        ],
      ],
    );
  }
}
