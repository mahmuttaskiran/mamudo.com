import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/widgets/about_me_widget.dart';
import 'package:mamudo_com/widgets/communication.dart';
import 'package:mamudo_com/widgets/contact.dart';
import 'package:mamudo_com/widgets/core_components.dart';
import 'package:mamudo_com/widgets/educations.dart';
import 'package:mamudo_com/widgets/experiences.dart';
import 'package:mamudo_com/widgets/fixed_card.dart';
import 'package:mamudo_com/widgets/global_app_state.dart';
import 'package:mamudo_com/widgets/profile.dart';

class CVPage extends StatefulWidget {
  @override
  _CVPageState createState() => _CVPageState();
}

class _CVPageState extends State<CVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tCvBtn.get(context)),
        actions: <Widget>[
          GlobalAppStateWidget(padding: const EdgeInsets.only(right: 15),)
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              FixedCard(child: ProfileWidget(showActions: false)),
              FixedCard(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: AboutWidget(),
                ),
              ),
              FixedCard(child: CoreComponents()),
              FixedCard(child: Experiences()),
              FixedCard(child: Communications()),
              FixedCard(child: Educations()),
              FixedCard(child: Contact()),
            ],
          ),
        ),
      ),
    );
  }
}
