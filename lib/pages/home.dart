import 'package:flutter/material.dart';
import 'package:mamudo_com/widgets/fixed_card.dart';
import 'package:mamudo_com/widgets/global_app_state.dart';
import 'package:mamudo_com/widgets/profile.dart';
import 'package:mamudo_com/widgets/social.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GlobalAppStateWidget(),
              FixedCard(child: ProfileWidget()),
              FixedCard(child: SocialLinks()),
            ],
          ),
        ),
      ),
    );
  }
}
