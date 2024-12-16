import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home_page.dart';
//import 'l10n/app_localizations.dart';
import 'package:all_assignments/generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      locale: Locale('en'),
      supportedLocales: [
        Locale('en', ''),
        Locale('es', ''),
      ],
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      //   AppLocalizations.delegate,
      // ],
      localizationsDelegates: const [
  S.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
],
      home: HomePage(),
    );
  }
}
