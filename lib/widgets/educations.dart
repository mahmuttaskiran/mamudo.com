import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mamudo_com/constants/educations.dart';
import 'package:mamudo_com/models/education.dart';
import 'package:mamudo_com/utils/localization.dart';

class Educations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey[700],
          child: ListTile(
            title: Center(
              child: Text(AppLocalizations.of(context).map["educations"]),
            ),
            dense: false,
          ),
        ),
        ...[
          for (final c in educations)
            ListTile(
              dense: true,
              title: Text(c.university.get(context)),
              subtitle: Text(c.department.get(context)),
              trailing: Text(c.degree.get(context)),
              leading: CircleAvatar(
                radius: 25,
                child: Text(
                  getTime(c),
                  style: TextStyle(fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Theme.of(context).accentColor,
              ),
            ),
        ],
      ],
    );
  }

  String getTime(Education ed) {
    final s = DateFormat.yM().format(ed.start);
    String e;
    if (ed.end != null) {
      e = DateFormat.yM().format(ed.end);
    }
    return e == null ? s : s + "\n" + e;
  }
}
