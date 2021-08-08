import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

final isCupertino = !kIsWeb && Platform.isIOS;

const localizationsDelegate = <LocalizationsDelegate<dynamic>>[
  DefaultMaterialLocalizations.delegate,
  DefaultWidgetsLocalizations.delegate,
  DefaultCupertinoLocalizations.delegate,
];

final routes = <String, WidgetBuilder>{
  "/": (context) => HomePage(),
};

class ProjectColors {
  static const brandColor = Colors.orange;
  static const accentColor = Colors.indigoAccent;
  static const borderColor = Colors.grey;
  static const canvasColor = Colors.white;
  static const appbarBackground = Colors.white;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isCupertino
        ? CupertinoApp(
            title: 'Boilerplate',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: localizationsDelegate,
            theme: CupertinoThemeData(
              primaryColor: ProjectColors.brandColor,
              primaryContrastingColor: ProjectColors.accentColor,
              scaffoldBackgroundColor: Colors.white,
            ),
            routes: routes,
          )
        : MaterialApp(
            title: 'Boilerplate',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: localizationsDelegate,
            theme: ThemeData(
              primarySwatch: Colors.orange,
              primaryColor: ProjectColors.brandColor,
              accentColor: ProjectColors.accentColor,
              appBarTheme: AppBarTheme(
                backgroundColor: ProjectColors.appbarBackground,
              ),
            ),
            routes: routes,
          );
  }
}
