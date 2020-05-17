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

class _GlobalAppState {
  static final _GlobalAppState instance = _GlobalAppState._();

  _GlobalAppState._();

  factory _GlobalAppState() => instance;
  Locale _appLocale = Locale("en");
  ThemeMode _themeMode = ThemeMode.dark;

  Function appStateListener;

  Locale get appLocale => _appLocale;

  ThemeMode get themeMode => _themeMode;

  set locale(Locale v) {
    _appLocale = v;
    if (appStateListener != null) {
      appStateListener();
    }
  }

  set themeMode(ThemeMode mode) {
    _themeMode = mode;
    if (appStateListener != null) {
      appStateListener();
    }
  }

  String get opponentLocaleName {
    if (appLocale.languageCode == "tr") {
      return "English";
    } else {
      return "Turkish";
    }
  }

  Locale get opponentLocale {
    if (appLocale.languageCode == "tr") {
      return Locale("en");
    } else {
      return Locale("tr");
    }
  }

  ThemeMode get opponentThemeMode {
    if (_themeMode == ThemeMode.dark) {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }

  String get opponentThemeModeString {
    if (_themeMode == ThemeMode.dark) {
      return "Light";
    } else {
      return "Dark";
    }
  }
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
    _GlobalAppState().appStateListener = () => setState(() {});
  }

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
      themeMode: _GlobalAppState().themeMode,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _GlobalAppState().appLocale,
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
              Container(
                width: MediaQuery.of(context).size.width > 500
                    ? 500
                    : double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        _GlobalAppState().locale =
                            _GlobalAppState().opponentLocale;
                      },
                      child: Text(_GlobalAppState().opponentLocaleName),
                    ),
                    FlatButton(
                      onPressed: () {
                        _GlobalAppState().themeMode =
                            _GlobalAppState().opponentThemeMode;
                      },
                      child: Text(_GlobalAppState().opponentThemeModeString),
                    )
                  ],
                ),
              ),
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
