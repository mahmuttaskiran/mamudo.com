import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mamudo_com/constants/blogs.dart';
import 'package:mamudo_com/utils/localization.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogsWidget extends StatelessWidget {
  final bool showAll;

  BlogsWidget({this.showAll = false});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
      for (final f in showAll ? blogs : blogs.sublist(0, 2))
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              contentPadding: const EdgeInsets.all(15),
              title: Text(f.title.get(context)),
              onTap: () {
                launch(f.link);
              },
              subtitle: Text(
                f.content.get(context),
                maxLines: 2,
              ),
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(FontAwesomeIcons.mediumM),
              ),
            ),
          ],
        ),
    ]..add(showAll
            ? SizedBox.shrink()
            : Container(
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
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return BlogsPage();
                    }));
                  },
                ),
              )));
  }
}

class BlogsPage extends StatefulWidget {
  @override
  _BlogsPageState createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).map["blogPageTitle"]),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: width > 500 ? 500 : double.infinity,
          child: BlogsWidget(
            showAll: true,
          ),
        ),
      ),
    );
  }
}
