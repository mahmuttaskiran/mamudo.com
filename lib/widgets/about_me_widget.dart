import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/widgets/experiences.dart';

class AboutWidget extends StatefulWidget {
  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  String? content;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    rootBundle.loadString(tAbout.get(context)).then((value) {
      setState(() {
        content = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (content == null)
      return Center(
        child: CircularProgressIndicator(),
      );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CardTitle(tAboutMeBtn.get(context)),
        SizedBox(height: 10),
        SelectableText(
          content!,
        ),
      ],
    );
  }
}
