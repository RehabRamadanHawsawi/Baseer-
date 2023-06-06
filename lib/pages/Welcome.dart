// 
//import 'package:baseer_app_qp/Pages/LoginAdmin.dart';
// ignore: depend_on_referenced_packages
// ignore_for_file: file_names
import 'package:flutter/material.dart' ;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Welcome2.dart';





class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
       // Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Welcome2()),
                );
              },
              child: const Image(
                image: AssetImage('images/LOGO-.png'),
                width: 550,
                height: 650,
              ),
                ),
          ],
        ),
      ),
        ),
      );
  }
}