import 'package:flutter/material.dart';
import 'package:mamudo_com/app_state.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/widgets/about_me_widget.dart';
import 'package:mamudo_com/widgets/fixed_card.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FixedCard(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: AboutWidget(),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(tAboutMeTitle.get(context)),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              GlobalAppState().locale = GlobalAppState().opponentLocale;
            },
            child: Text(GlobalAppState().opponentLocaleName),
          ),
          TextButton(
            onPressed: () {
              GlobalAppState().themeMode = GlobalAppState().opponentThemeMode;
            },
            child: Text(GlobalAppState().opponentThemeModeString),
          ),
        ],
      ),
    );
  }
}
