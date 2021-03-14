import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/widgets/about_me_widget.dart';
import 'package:mamudo_com/widgets/fixed_card.dart';
import 'package:mamudo_com/widgets/global_app_state.dart';

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
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GlobalAppStateWidget(
              padding: const EdgeInsets.only(right: 15),
            ),
          )
        ],
      ),
    );
  }
}
