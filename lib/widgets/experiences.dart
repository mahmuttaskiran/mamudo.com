import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mamudo_com/constants/experiences.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/models/experience.dart';
import 'package:url_launcher/url_launcher.dart';

class CardTitle extends StatelessWidget {
  final String title;

  CardTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: double.infinity,
      child: Center(child: Text(title)),
      color: Theme.of(context).accentColor,
    );
  }
}

class Experiences extends StatelessWidget {
  final bool showAll;

  Experiences({this.showAll = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (!showAll) CardTitle(tExperiencesTitle.get(context)),
        ...[
          for (final e in showAll ? tExperiences : tExperiences.sublist(0, 2))
            ExperienceWidget(
              experience: e,
            )
        ],
        if (!showAll)
          Container(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.grey[900]
                : Colors.grey[300],
            child: ListTile(
              title: Text(tSeeAll.get(context)),
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(FontAwesomeIcons.handPointer),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ExperiencesPage()));
              },
            ),
          ),
      ],
    );
  }
}

class ExperiencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(tExperiencesTitle.get(context)),
      ),
      body: Center(
        child: Container(
          width: width > 500 ? 500 : double.infinity,
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
  final Experience experience;

  ExperienceWidget({this.experience});

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
          title: Text(widget.experience.title.get(context)),
          subtitle: Text(widget.experience.description.get(context)),
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
        Container(
          width: double.infinity,
          height: 0.5,
          color: Colors.grey[900],
        ),
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
      runSpacing: -10,
      children: <Widget>[
        Chip(
          label: Text(
              widget.experience.type == ExperienceType.professionalExperience
                  ? tProfessionalExperience.get(context)
                  : tSelfExperience.get(context)),
          backgroundColor: positionBackgroundColor,
        ),
        if (widget.experience.position != null)
          Chip(
            label: Text(widget.experience.position.get(context)),
            backgroundColor: positionBackgroundColor,
          ),
        if (widget.experience.location != null)
          Chip(
            label: Text(widget.experience.location.get(context)),
            backgroundColor: positionBackgroundColor,
          ),
        if (widget.experience.isOpenSource)
          GestureDetector(
            onTap: () {
              launch(widget.experience.secondaryLink);
            },
            child: Chip(
              label: Text(tOpenSource.get(context)),
              deleteIcon: Icon(
                FontAwesomeIcons.code,
                size: 12,
              ),
              onDeleted: () {},
              backgroundColor: positionBackgroundColor,
            ),
          ),
        if (widget.experience.appStoreLink != null)
          Tooltip(
            message: "Go to AppStore",
            child: GestureDetector(
              onTap: () {
                launch(widget.experience.playStoreLink);
              },
              child: Chip(
                label: Text("AppStore"),
                deleteIcon: Icon(
                  FontAwesomeIcons.appStoreIos,
                  size: 12,
                ),
                onDeleted: () {},
                backgroundColor: positionBackgroundColor,
              ),
            ),
          ),
        if (widget.experience.playStoreLink != null)
          Tooltip(
            message: "Go to PlayStore",
            child: GestureDetector(
              onTap: () {
                launch(widget.experience.playStoreLink);
              },
              child: Chip(
                label: Text("PlayStore"),
                deleteIcon: Icon(
                  FontAwesomeIcons.googlePlay,
                  size: 12,
                ),
                onDeleted: () {},
                backgroundColor: positionBackgroundColor,
              ),
            ),
          ),
        SizedBox(width: 200)
      ],
    );
  }

  String get dateStr {
    final s = DateFormat.yM().format(widget.experience.start);
    String e;
    if (widget.experience.end != null) {
      e = DateFormat.yM().format(widget.experience.end);
    }
    return e == null ? s : s + "\n" + e;
  }

  Widget get trailing {
    if (widget.experience.isOpenSource) {
      return Tooltip(
        message: widget.experience.secondaryLink,
        child: GestureDetector(
          onTap: () {
            launch(widget.experience.secondaryLink);
          },
          child: CircleAvatar(
            child: Icon(FontAwesomeIcons.github),
          ),
        ),
      );
    } else if (widget.experience.assetImage != null) {
      return Tooltip(
        message: widget.experience.secondaryLink,
        child: GestureDetector(
          onTap: () {
            launch(widget.experience.secondaryLink);
          },
          child: ClipOval(
            child: Image.asset(
              widget.experience.assetImage,
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
