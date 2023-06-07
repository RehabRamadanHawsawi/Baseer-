
// ignore_for_file: file_names

import 'dart:math';
import 'package:flutter_gen/gen_l10n/app_localizations.dart' show AppLocalizations;
import 'package:flutter/material.dart';

@override

class ColorResultScreen extends StatefulWidget {
  final String text;
  final Color color;

  const ColorResultScreen({
    Key? key,
    required this.text,
    required this.color,
    required AppBar child,
  }) : super(key: key);

  @override
  _ColorResultScreenState createState() => _ColorResultScreenState();
}

class _ColorResultScreenState extends State<ColorResultScreen> {
  //class _ColorResultScreenState extends State<ColorResultScreen> {
  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: PreferredSize(
        //wrap with PreferredSize
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 254, 184, 166),
          elevation: 0,
          title:Text(
              AppLocalizations.of(context)!.colors,
            style: const TextStyle(
                fontFamily: 'Amiri', color: Colors.black, fontSize: 25),
          ),
        ),
      ),
    );

    //Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.text),
      ),
      body: Container(
        color: widget.color,
      ),
    );
  }
}


// ignore: unused_element
String _getColorName(Color color) {
  // Define a map of color names and their corresponding RGB values
  final colorNames = {
    'Black': Colors.black,
    'White': Colors.white,
    'Red': Colors.red,
    'Green': Colors.green,
    'Blue': Colors.blue,
    'Yellow': Colors.yellow,
    'Orange': Colors.orange,
    'Purple': Colors.purple,
    'Pink': Colors.pink,
    'Teal': Colors.teal,
  };

  // Find the color name with the closest RGB value to the given color
  String closestColorName = '';
  double closestColorDistance = double.infinity;

  for (final entry in colorNames.entries) {
    final distance = _calculateColorDistance(color, entry.value);
    if (distance < closestColorDistance) {
      closestColorName = entry.key;
      closestColorDistance = distance;
    }
  }

  return closestColorName;
}

double _calculateColorDistance(Color c1, Color c2) {
  final rmean = ((c1.red + c2.red) / 2).round();
  final r = (c1.red - c2.red).round();
  final g = (c1.green - c2.green).round();
  final b = (c1.blue - c2.blue).round();
  final distance = sqrt((((512 + rmean) * r * r) ~/ 256) +
      4 * g * g +
      (((767 - rmean) * b * b) ~/ 256));
  return distance;
}
