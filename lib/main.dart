import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mamudo_com/app_state.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/pages/about_me_page.dart';
import 'package:mamudo_com/pages/blogs_page.dart';
import 'package:mamudo_com/pages/cv_page.dart';
import 'package:mamudo_com/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? locale;

  @override
  void initState() {
    super.initState();
    GlobalAppState().appStateListener = () => setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tName.getEnValue(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.lightBlueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (_) => HomePage(),
        "/cv": (_) => CVPage(),
        "/blogs": (_) => BlogsPage(),
        "/about": (_) => AboutMePage(),
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      supportedLocales: [Locale("en"), Locale("tr")],
      themeMode: GlobalAppState().themeMode,
      locale: GlobalAppState().appLocale,
    );
  }
}
