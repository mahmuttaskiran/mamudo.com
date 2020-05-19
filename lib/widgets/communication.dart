import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/communications.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/widgets/experiences.dart';

class BlackDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: double.infinity,
      color: Colors.black,
    );
  }
}

class Communications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        CardTitle(tCommunicationsTitle.get(context)),
        ...[
          for (var i = 0; i < tCommunications.length; i++)
            Column(
              children: <Widget>[
                ListTile(
                  dense: true,
                  title: Text(tCommunications[i].languageName.get(context)),
                  subtitle: Text(tCommunications[i].knowledge.get(context)),
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    child: Center(
                      child: Text(
                          tCommunications[i].locale.languageCode.toUpperCase()),
                    ),
                  ),
                ),
                if (i != tCommunications.length - 1) BlackDivider(),
              ],
            ),
        ],
      ],
    );
  }
}
