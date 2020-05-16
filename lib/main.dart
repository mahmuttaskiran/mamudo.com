import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mamudo_com/utils/localization.dart';
import 'package:mamudo_com/widgets/blog.dart';
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
  void initState() {
    super.initState();
    final localeSplit = ("en_US").split("_");
    locale = Locale(localeSplit[0], localeSplit[1]);
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mahmut Taşkıran"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.github), onPressed: () {})
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ProfileWidget(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Card(child: SocialLinks()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Card(child: BlogsWidget()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
