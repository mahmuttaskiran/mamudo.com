import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_state.dart';

class GlobalAppStateWidget extends StatelessWidget {
  final EdgeInsets padding;

  GlobalAppStateWidget({this.padding = const EdgeInsets.all(0)});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.black);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            onPressed: () {
              GlobalAppState().locale = GlobalAppState().opponentLocale;
            },
            child: Text(
              GlobalAppState().opponentLocaleName,
              style: Theme.of(context).brightness == Brightness.light
                  ? textStyle
                  : null,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              GlobalAppState().themeMode = GlobalAppState().opponentThemeMode;
            },
            child: Text(
              GlobalAppState().opponentThemeModeString,
              style: Theme.of(context).brightness == Brightness.light
                  ? textStyle
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
