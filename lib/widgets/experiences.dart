import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mamudo_com/constants/experiences.dart';
import 'package:mamudo_com/utils/localization.dart';
import 'package:url_launcher/url_launcher.dart';

enum ExperienceType {
  SelfExperience,
  ProfessionalExperience,
}

class Experience {
  String title;
  String description;
  String assetImage;
  DateTime start;
  DateTime end;
  String playStoreLink;
  String appStoreLink;
  String secondaryLink;
  ExperienceType type;
  String position;
  String location;
  String company;

  bool isOpenSource;

  Experience({
    this.title,
    this.description,
    this.assetImage,
    this.start,
    this.end,
    this.playStoreLink,
    this.secondaryLink,
    this.type,
    this.position,
    this.location,
    this.company,
    this.appStoreLink,
    this.isOpenSource = false,
  });
}

class Experiences extends StatelessWidget {
  final bool showAll;

  Experiences({this.showAll = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (!showAll)
          Container(
            color: Colors.grey,
            child: ListTile(
              title: Center(
                child: Text("Experiences"),
              ),
              dense: false,
            ),
          ),
        ...[
          for (final e in showAll ? experiences : experiences.sublist(0, 2))
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
              title: Text(AppLocalizations.of(context).map["seeAllPosts"]),
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
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: width > 500 ? 500 : double.infinity,
          child: Experiences(
            showAll: true,
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
          title: Text(widget.experience.title),
          subtitle: Text(widget.experience.description),
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
          label: Text(widget.experience.type.toString().split(".")[1]),
          backgroundColor: positionBackgroundColor,
        ),
        if (widget.experience.position != null)
          Chip(
            label: Text(widget.experience.position),
            backgroundColor: positionBackgroundColor,
          ),
        if (widget.experience.location != null)
          Chip(
            label: Text(widget.experience.location),
            backgroundColor: positionBackgroundColor,
          ),
        if (widget.experience.isOpenSource)
          GestureDetector(
            onTap: () {
              launch(widget.experience.secondaryLink);
            },
            child: Chip(
              label: Text("Open source"),
              deleteIcon: Icon(
                FontAwesomeIcons.code,
                size: 12,
              ),
              onDeleted: () {},
              backgroundColor: positionBackgroundColor,
            ),
          ),
        if (widget.experience.appStoreLink != null)
          GestureDetector(
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
        if (widget.experience.playStoreLink != null)
          GestureDetector(
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
        SizedBox(width: 200)
      ],
    );
  }

  String get dateStr {
    final s = DateFormat.yM().format(widget.experience.start);
    String e;
    if (widget.experience.end != null) {
      e = DateFormat.yM().format(widget.experience.start);
    }
    return e == null ? s : s + "\n" + e;
  }

  Widget get trailing {
    if (widget.experience.isOpenSource) {
      return GestureDetector(
        onTap: () {
          launch(widget.experience.secondaryLink);
        },
        child: CircleAvatar(
          child: Icon(FontAwesomeIcons.github),
        ),
      );
    } else if (widget.experience.assetImage != null) {
      return GestureDetector(
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
      );
    }
    return null;
  }
}
