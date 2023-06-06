
// ignore_for_file: file_names

import 'package:baseer_application_1/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Welcome7 extends StatefulWidget {
  const Welcome7({Key? key}) : super(key: key);

  @override
  _Welcome7State createState() => _Welcome7State();
}

class _Welcome7State extends State<Welcome7> {
   final List<String> _texts = [
    'مرحبا بك في بصير',
  ];

  int _currentIndex = 0;

  void _onPressed() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _texts.length;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 254, 184, 166),
            elevation: 0,
            title: Text(  AppLocalizations.of(context)!.welcome,
              style: const TextStyle(
                fontFamily: 'Amiri',
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            titleSpacing: 0.0,
            centerTitle: true,
          ),
        ),
       body: Center(
          child: GestureDetector(
            onTap: _onPressed,
            child: Text(
              _texts[_currentIndex],
              style: const TextStyle(fontFamily: 'Amiri', color: Colors.black, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
