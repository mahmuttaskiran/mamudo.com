import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mamudo_com/utils/localization.dart';
import 'package:mamudo_com/widgets/blog.dart';
import 'package:mamudo_com/widgets/communication.dart';
import 'package:mamudo_com/widgets/contact.dart';
import 'package:mamudo_com/widgets/core_components.dart';
import 'package:mamudo_com/widgets/educations.dart';
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
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _Card(child: ProfileWidget()),
              _Card(child: SocialLinks()),
              _Card(child: BlogsWidget()),
              _Card(child: CoreComponents()),
              _Card(child: Experiences()),
              _Card(child: Communications()),
              _Card(child: Educations()),
              _Card(child: Contact()),
            ],
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final Widget child;

  _Card({this.child});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        width: width > 500 ? 500 : double.infinity,
        child: child,
      ),
    );
  }
}
