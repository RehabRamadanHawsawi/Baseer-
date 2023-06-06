
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Welcome7.dart';


class Welcome6 extends StatefulWidget {
  const Welcome6({Key? key}) : super(key: key);

  @override
  _Welcome6State createState() => _Welcome6State();
}

class _Welcome6State extends State<Welcome6> {
   final List<String> _texts = [
    'لديك استفسار؟؟ او طلبًا ما , انت باعيننا فقط تواصل معنا عبر التواصل',
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
        builder: (context) => const Welcome7(),
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
            title:Text(
              AppLocalizations.of(context)!.welcome,
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
