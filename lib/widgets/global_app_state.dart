import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_state.dart';

class GlobalAppStateWidget extends StatelessWidget {
  final EdgeInsets padding;
  GlobalAppStateWidget({this.padding = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: MediaQuery.of(context).size.width > 500 ? 500 : double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                GlobalAppState().locale = GlobalAppState().opponentLocale;
              },
              child: Text(GlobalAppState().opponentLocaleName),
            ),
            OutlineButton(
              onPressed: () {
                GlobalAppState().themeMode = GlobalAppState().opponentThemeMode;
              },
              child: Text(GlobalAppState().opponentThemeModeString),
            )
          ],
        ),
      ),
    );
  }
}
