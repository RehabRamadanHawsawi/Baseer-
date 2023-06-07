// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'foodx.dart';
import 'dart:io';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class FoodRE extends StatelessWidget {
  final String imagePath;

  const FoodRE({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
            backgroundColor: const Color.fromARGB(255, 253, 252, 252),
              elevation: 0,    
            title:Text(
              AppLocalizations.of(context)!.the_resul,
            style:
              const TextStyle(fontFamily: 'Amiri', color: Colors.black, fontSize: 25),),
              //fontWeight: FontWeight.w900يخلي الخط بال bold  
            titleSpacing: 0.0,
            centerTitle: true,
            leading:ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     backgroundColor:const Color.fromARGB(255, 254, 165, 133),),
                     onPressed: () {Navigator.of(context).pop();},
                      child: Text(AppLocalizations.of(context)!.back,
                     ),
            ),
                     leadingWidth:70,
             ),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(imagePath)),
    );
  }
}