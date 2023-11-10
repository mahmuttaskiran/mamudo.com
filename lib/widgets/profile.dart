import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/translations.dart';

class ProfileWidget extends StatelessWidget {
  final bool showActions;

  ProfileWidget({this.showActions = true});

  @override
  Widget build(BuildContext context) {
    if (!showActions) {
      return ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: ClipOval(
          child: Image.asset(
            "assets/images/profile_0.jpeg",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(tName.get(context)),
        subtitle: Text(tEmail.get(context)),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 15),
          ProfileImageWithPlaceholder(
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10),
          Text(tName.get(context),
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 10),
          FadeInTextsWidget(
              texts: tProfessions.map((e) => e.get(context)).toList()),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Text(
              tShortDesc.get(context),
              textAlign: TextAlign.center,
            ),
          ),
          if (showActions) SizedBox(height: 15),
          if (showActions) Divider(),
          if (showActions) SizedBox(height: 4),
          if (showActions)
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/about");
                    },
                    child: Text(
                      tAboutMeBtn.get(context),
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/blogs");
                    },
                    child: Text(
                      tBlogsTitle.get(context),
                    ),
                  ),
                  SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/cv");
                    },
                    child: Text(
                      tCvBtn.get(context),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class ProfileImageWithPlaceholder extends StatelessWidget {
  final double width;
  final double height;

  ProfileImageWithPlaceholder({this.height = 50, this.width = 50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval(
            child: Container(
          width: width,
          height: height,
          color: Colors.red,
        )),
        ClipOval(
          child: Image.asset(
            "assets/images/profile_0.jpeg",
            width: width - 2,
            height: height - 2,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class FadeInTextsWidget extends StatefulWidget {
  final List<String> texts;
  final Duration animationDuration;
  final Duration textDuration;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final bool repeatForever;

  FadeInTextsWidget({
    required this.texts,
    this.animationDuration = const Duration(milliseconds: 600),
    this.textDuration = const Duration(seconds: 2),
    this.textStyle,
    this.textAlign,
    this.repeatForever = true,
  });

  @override
  _FadeInTextsWidgetState createState() => _FadeInTextsWidgetState();
}

class _FadeInTextsWidgetState extends State<FadeInTextsWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late int _index;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _index = 0;
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _initiateTimer();

    _controller.forward();
  }

  void _initiateTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(widget.textDuration, (timer) {
      if (_index < widget.texts.length - 1) {
        _index++;
      } else {
        if (widget.repeatForever) {
          _index = 0;
        } else {
          _timer?.cancel();
        }
      }
      if (mounted) setState(() {});
      _controller.forward(from: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Text(
        widget.texts[_index],
        style: widget.textStyle,
        textAlign: widget.textAlign,
      ),
    );
  }
}
