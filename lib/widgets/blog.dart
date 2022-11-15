import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mamudo_com/constants/blogs.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/pages/blogs_page.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogsWidget extends StatelessWidget {
  final bool showAll;

  BlogsWidget({this.showAll = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (final f in showAll ? tBlogs : tBlogs.sublist(0, 2))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(15),
                title: Text(f.title.get(context)),
                onTap: () {
                  launchUrl(Uri.parse(f.link!));
                },
                subtitle: Text(
                  f.content.get(context),
                  maxLines: 2,
                ),
                leading: CircleAvatar(
                  child: Icon(FontAwesomeIcons.medium),
                ),
              ),
            ],
          ),
      ]..add(
          showAll
              ? SizedBox.shrink()
              : Container(
                  child: ListTile(
                    title: Text(tSeeAll.get(context)),
                    leading: CircleAvatar(
                      child: Icon(FontAwesomeIcons.handPointer),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return BlogsPage();
                          },
                        ),
                      );
                    },
                  ),
                ),
        ),
    );
  }
}
