   // ignore_for_file: file_names
   import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


// ignore: camel_case_types
class medicineRE extends StatelessWidget {
  final String text;

  const medicineRE({super.key, required this.text});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 184, 166),
        title: Text(
              AppLocalizations.of(context)!.the_resul,
          style:
              const TextStyle(fontFamily: 'Amiri', color: Colors.black, fontSize: 25),
        ),
        titleSpacing: 0.0,
        centerTitle: true,
      ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Text(text),
        ),
      );
}