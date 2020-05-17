import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mamudo_com/app_state.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/pages/home.dart';

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
  void initState() {
    super.initState();
    GlobalAppState().appStateListener = () => setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tName.get(context),
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
      home: HomePage(),
    );
  }
}
