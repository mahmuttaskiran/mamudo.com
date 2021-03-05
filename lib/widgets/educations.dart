import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mamudo_com/constants/educations.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/models/education.dart';
import 'package:mamudo_com/widgets/communication.dart';
import 'package:mamudo_com/widgets/experiences.dart';

class Educations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        CardTitle(tEducationTitle.get(context)),
        SizedBox(height: 8),
        ...[
          for (var i = 0; i < tEducations.length; i++)
            Column(
              children: <Widget>[
                ListTile(
                  dense: true,
                  title: Text(tEducations[i].university!.get(context)),
                  subtitle: Text(tEducations[i].department!.get(context)),
                  trailing: Text(tEducations[i].degree!.get(context)),
                  leading: CircleAvatar(
                    radius: 25,
                    child: Text(
                      getTime(tEducations[i]),
                      style: TextStyle(fontSize: 11),
                      textAlign: TextAlign.center,
                    ),
                    backgroundColor: Theme.of(context).accentColor,
                  ),
                ),
                if (tEducations.length - 1 != i) BlackDivider(),
              ],
            ),
        ],
      ],
    );
  }

  String getTime(Education ed) {
    final s = DateFormat.yM().format(ed.start!);
    String? e;
    if (ed.end != null) {
      e = DateFormat.yM().format(ed.end!);
    }
    return e == null ? s : s + "\n" + e;
  }
}
