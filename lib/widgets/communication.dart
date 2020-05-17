import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/communications.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/widgets/experiences.dart';

class Communications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CardTitle(tCommunicationsTitle.get(context)),
        ...[
          for (final c in tCommunications)
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
