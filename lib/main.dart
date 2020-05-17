import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mamudo_com/utils/localization.dart';
import 'package:mamudo_com/widgets/blog.dart';
import 'package:mamudo_com/widgets/experiences.dart';
import 'package:mamudo_com/widgets/profile.dart';
import 'package:mamudo_com/widgets/social.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahmut Taskiran',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.lightBlueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.lightBlueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.dark,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      supportedLocales: [Locale("en"), Locale("tr")],
      home: HomePage(),
    );
  }
}

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
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            children: <Widget>[
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  width: width > 500 ? 500 : double.infinity,
                  child: ProfileWidget(),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  width: width > 500 ? 500 : double.infinity,
                  child: SocialLinks(),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  width: width > 500 ? 500 : double.infinity,
                  child: BlogsWidget(),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  width: width > 500 ? 500 : double.infinity,
                  child: Experiences(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
