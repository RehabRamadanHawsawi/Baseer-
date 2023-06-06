
import 'package:baseer_application_1/pages/Welcome.dart';
import 'package:baseer_application_1/pages/error_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const Basseer());

class Basseer extends StatelessWidget {
  const Basseer({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
return const MaterialApp(
          debugShowCheckedModeBanner: true,
            ///ترجمة اللغة من عربي لانجايز والعكس
      localizationsDelegates: [
         AppLocalizations.delegate, //new
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en', ''), // English
        Locale('ar', ''), // Arabic
      ],
       home: Welcome(), 
       );
  }
}

