import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mamudo_com/constants/experiences.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/models/experience.dart';
import 'package:mamudo_com/widgets/communication.dart';
import 'package:mamudo_com/widgets/fixed_card.dart';
import 'package:url_launcher/url_launcher.dart';

import 'global_app_state.dart';

class CardTitle extends StatelessWidget {
  final String? title;

  CardTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 200,
      child: Center(child: Text(title!)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class Experiences extends StatelessWidget {
  final bool showAll;

  Experiences({this.showAll = false});

  @override
  Widget build(BuildContext context) {
    final list = showAll ? tExperiences : tExperiences.sublist(0, 2);
    return Column(
      children: <Widget>[
        if (!showAll) SizedBox(height: 10),
        if (!showAll) CardTitle(tExperiencesTitle.get(context)),
        ...[
          for (var i = 0; i < list.length; i++)
            ExperienceWidget(
              experience: list[i],
              addDivider: i != list.length - 1,
            )
        ],
        if (!showAll)
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ExperiencesPage();
              }));
            },
            child: Container(
              height: 40,
              width: double.infinity,
              color: Theme.of(context).accentColor,
              child: Center(child: Text(tSeeAll.get(context))),
            ),
          ),
      ],
    );
  }
}

class ExperiencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tExperiencesTitle.get(context)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GlobalAppStateWidget(
              padding: const EdgeInsets.only(right: 15),
            ),
          )
        ],
      ),
      body: Center(
        child: FixedCard(
          child: SingleChildScrollView(
            child: Experiences(
              showAll: true,
            ),
          ),
        ),
      ),
    );
  }
}

class ExperienceWidget extends StatefulWidget {
  final Experience? experience;
  final bool addDivider;

  ExperienceWidget({this.experience, this.addDivider = true});

  @override
  _ExperienceWidgetState createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            child: Text(
              dateStr,
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Theme.of(context).accentColor,
          ),
          title: Text(widget.experience!.title!.get(context)),
          subtitle: Text(widget.experience!.description!.get(context)),
          trailing: trailing,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: chips,
          ),
        ),
        SizedBox(height: 10),
        if (widget.addDivider) BlackDivider(),
      ],
    );
  }

  Wrap get chips {
    final positionBackgroundColor = Theme.of(context).primaryColor;
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.end,
      runAlignment: WrapAlignment.end,
      spacing: 5,
      runSpacing: 10,
      children: <Widget>[
        Chip(
          label: Text(
              widget.experience!.type == ExperienceType.professionalExperience
                  ? tProfessionalExperience.get(context)
                  : tSelfExperience.get(context)),
          backgroundColor: positionBackgroundColor,
        ),
        if (widget.experience!.position != null)
          Chip(
            label: Text(widget.experience!.position!.get(context)),
            backgroundColor: positionBackgroundColor,
          ),
        if (widget.experience!.location != null)
          Chip(
            label: Text(widget.experience!.location!.get(context)),
            backgroundColor: positionBackgroundColor,
          ),
        if (widget.experience!.isOpenSource)
          GestureDetector(
            onTap: () {
              launch(widget.experience!.secondaryLink!);
            },
            child: Chip(
              label: Text(tOpenSource.get(context)),
              deleteIcon: Icon(
                FontAwesomeIcons.code,
                size: 12,
              ),
              onDeleted: () {},
            ),
          ),
        if (widget.experience!.appStoreLink != null)
          Tooltip(
            message: "Go to AppStore",
            child: GestureDetector(
              onTap: () {
                launch(widget.experience!.appStoreLink!);
              },
              child: Chip(
                label: Text("Go to AppStore"),
                deleteIcon: Icon(
                  FontAwesomeIcons.appStoreIos,
                  size: 12,
                ),
                onDeleted: () {},
              ),
            ),
          ),
        if (widget.experience!.playStoreLink != null)
          Tooltip(
            message: "Go to PlayStore",
            child: GestureDetector(
              onTap: () {
                launch(widget.experience!.playStoreLink!);
              },
              child: Chip(
                label: Text("Go to PlayStore"),
                deleteIcon: Icon(
                  FontAwesomeIcons.googlePlay,
                  size: 12,
                ),
                onDeleted: () {},
              ),
            ),
          ),
      ],
    );
  }

  String get dateStr {
    final s = DateFormat.yM().format(widget.experience!.start!);
    String? e;
    if (widget.experience!.end != null) {
      e = DateFormat.yM().format(widget.experience!.end!);
    }
    return e == null ? s : s + "\n" + e;
  }

  Widget? get trailing {
    if (widget.experience!.isOpenSource) {
      return Tooltip(
        message: widget.experience!.secondaryLink!,
        child: GestureDetector(
          onTap: () {
            launch(widget.experience!.secondaryLink!);
          },
          child: CircleAvatar(
            child: Icon(FontAwesomeIcons.github),
          ),
        ),
      );
    } else if (widget.experience!.assetImage != null) {
      return Tooltip(
        message: widget.experience!.secondaryLink!,
        child: GestureDetector(
          onTap: () {
            launch(widget.experience!.secondaryLink!);
          },
          child: ClipOval(
            child: Image.asset(
              widget.experience!.assetImage!,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
        ),
      );
    }
    return null;
  }
}
