

// ignore_for_file: file_names

import 'package:baseer_application_1/pages/Welcome4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Welcome3 extends StatefulWidget {
  const Welcome3({Key? key}) : super(key: key);

  @override
  _Welcome3State createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
   final List<String> _texts = [
    'في المأكولات لا تتردد بالتعرف على الأطباق سأخبرك بأسمائها وبالنسبة للمنتجات سأخبرك بتاريخ صلاحيتها و مكوناته وأسمه قبل ذلك',
  ];

  int _currentIndex = 0;

  void _onPressed() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _texts.length;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Welcome4(),
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
            title: Text(
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
