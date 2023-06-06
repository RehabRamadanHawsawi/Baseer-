// ignore_for_file: file_names

import 'package:flutter/material.dart' ;
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: camel_case_types
class priceRE extends StatefulWidget {
  const priceRE({super.key, required String imagePath});

  @override
  State<priceRE> createState() => _priceREState();
}

// ignore: camel_case_types
class _priceREState extends State<priceRE> {

  Widget buildProductName() {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              ': اسم المنتج ',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: ScreenHeight * 0.02,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inspiration',
                height: ScreenHeight * 0.005,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ScreenHeight * 0.15,
          width: ScreenWidth,
          //
          // alignment: Alignment.centerRight,
          // decoration: BoxDecoration(
            // color: const Color(0xffffffff),
            // borderRadius: BorderRadius.circular(10),
          // ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: const TextStyle(
              color: Color(0xcc000000),
            ),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xccb2b2b2),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Color(0xffCDDCE3)),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.fromLTRB(0, 14, 14, 14),

                hintText: '   ... اسم المنتج ',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: ScreenHeight * 0.015,
                  fontFamily: 'Inspiration',
                ),
                helperStyle: const TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }

  Widget buildPrice() {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              ': السعر ',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: ScreenHeight * 0.02,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inspiration',
                height: ScreenHeight * 0.0025,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ScreenHeight * 0.15,
          width: ScreenWidth,
          //
          // alignment: Alignment.centerRight,
          // decoration: BoxDecoration(
          // color: const Color(0xffffffff),
          // borderRadius: BorderRadius.circular(10),
          // ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: const TextStyle(
              color: Color(0xcc000000),
            ),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xccb2b2b2),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Color(0xffCDDCE3)),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.fromLTRB(0, 14, 14, 14),

                hintText: '   ... سعر المنتج ',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: ScreenHeight * 0.015,
                  fontFamily: 'Inspiration',
                ),
                helperStyle: const TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }


  Widget buildDeleteAndAdd() {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
        height: ScreenHeight * 0.10,
        width: ScreenWidth * 0.90,
        padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
        child: Row(
          children: [
        Container(
// // autogrouprysxeJB (CDkLtMuJaCH4NFpVjxrySX)
                  margin: const EdgeInsets.fromLTRB(
                      0 , 0 , 20 , 0 ),
          height: ScreenHeight * 0.06,
            width: ScreenWidth * 0.35,
                  decoration: BoxDecoration(
                    color: const Color(0xfffeae9d),
                    borderRadius: BorderRadius.circular(8 ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 , 4 ),
                        blurRadius: 2 ,
                      ),
                    ],
                  ),
                  child:
                  TextButton(
                    onPressed: () {},
                    child:
                    const Text(
                      'إضافة',
                      textAlign: TextAlign.center,
                      style: TextStyle(

                        // fontWeight: FontWeight.w400,
                        // height: 1.2125 * ffem / fem,
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontFamily: 'Inter'
                      ),
                    ),
                  ),
                ),

            Container(
// // autogrouprysxeJB (CDkLtMuJaCH4NFpVjxrySX)
//                   margin: EdgeInsets.fromLTRB(
//                       0 , 0 , 69 , 0 ),
              height: ScreenHeight * 0.06,
              width: ScreenWidth * 0.35,
              decoration: BoxDecoration(
                color: const Color(0xfffeae9d),
                borderRadius: BorderRadius.circular(8 ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 , 4 ),
                    blurRadius: 2 ,
                  ),
                ],
              ),
              child:
              TextButton(
                onPressed: () {},
                child:
                const Text(
                  'حذف',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    // fontWeight: FontWeight.w400,
                    // height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontFamily: 'Inter'
                  ),
                ),
              ),
            ),
          ],
        ));
  }


  Widget buildEqaulAndSum() {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Container(
        // height: ScreenHeight * 0.1,
        width: ScreenWidth * 0.90,
        padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
        child: Row(
          children: [
            Container(
// // autogrouprysxeJB (CDkLtMuJaCH4NFpVjxrySX)
              margin: const EdgeInsets.fromLTRB(
                  0 , 0 , 20 , 0 ),
              height: ScreenHeight * 0.06,
              width: ScreenWidth * 0.35,
              decoration: BoxDecoration(
                color: const Color(0xfffeae9d),
                borderRadius: BorderRadius.circular(8 ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 , 4 ),
                    blurRadius: 2 ,
                  ),
                ],
              ),
              child:
              TextButton(
                onPressed: () {},
                child:
                const Text(
                  '+',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    // fontWeight: FontWeight.w400,
                    // height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontFamily: 'Inter'
                  ),
                ),
              ),
            ),

            Container(
// // autogrouprysxeJB (CDkLtMuJaCH4NFpVjxrySX)
//                   margin: EdgeInsets.fromLTRB(
//                       0 , 0 , 69 , 0 ),
              height: ScreenHeight * 0.06,
              width: ScreenWidth * 0.35,
              decoration: BoxDecoration(
                color: const Color(0xfffeae9d),
                borderRadius: BorderRadius.circular(8 ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 , 4 ),
                    blurRadius: 2 ,
                  ),
                ],
              ),
              child:
              TextButton(
                onPressed: () {},
                child:
                const Text(
                  '=',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    // fontWeight: FontWeight.w400,
                    // height: 1.2125 * ffem / fem,
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontFamily: 'Inter'
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildTotal() {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              ': المجموع ',
              style: TextStyle(
                color: const Color(0xff000000),
                fontSize: ScreenHeight * 0.02,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inspiration',
                height: ScreenHeight * 0.0025,
              ),
            ),
          ],
        ),
        SizedBox(
          height: ScreenHeight * 0.15,
          width: ScreenWidth,
          //
          // alignment: Alignment.centerRight,
          // decoration: BoxDecoration(
          // color: const Color(0xffffffff),
          // borderRadius: BorderRadius.circular(10),
          // ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: const TextStyle(
              color: Color(0xcc000000),
            ),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xccb2b2b2),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Color(0xffCDDCE3)),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.fromLTRB(0, 14, 14, 14),

                // hintText: '    ',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: ScreenHeight * 0.015,
                  fontFamily: 'Inspiration',
                ),
                helperStyle: const TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                /*decoration: const BoxDecoration(
                        end: Alignment.bottomCenter,
                        colors: [
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                    Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                      Color(0xffffffff),
                    ])),*/
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenWidth * 0.05,
                      vertical: ScreenHeight * 0.10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
// // autogrouprysxeJB (CDkLtMuJaCH4NFpVjxrySX)
//                   margin: EdgeInsets.fromLTRB(
//                       0 , 0 , 69 , 0 ),
                        height: ScreenHeight * 0.05,
                        width: ScreenWidth * 0.18,
                        decoration: BoxDecoration(
                          color: const Color(0xfffeae9d),
                          borderRadius: BorderRadius.circular(8 ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 , 4 ),
                              blurRadius: 2 ,
                            ),
                          ],
                        ),
                        child:
                        TextButton(
                          onPressed: () {},
                          child: 
                          const Text(
                            'الخلف',
                            style: TextStyle(

                              // fontWeight: FontWeight.w400,
                              // height: 1.2125 * ffem / fem,
                                color: Color(0xff000000),
                                fontSize: 20,
                                fontFamily: 'Inter'
                            ),
                          ),
                        ),
                      ),
                      Text(
              AppLocalizations.of(context)!.the_account,
                        style: TextStyle(
                          color: const Color(0xff000000),
                          fontSize: ScreenWidth * 0.07,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Inspiration',
                        ),
                      ),

                      SizedBox(height: ScreenHeight * 0.00003),
                      buildProductName(),
                      buildPrice(),
                      buildDeleteAndAdd(),
                      buildTotal(),
                      buildEqaulAndSum(),
                      // build product and price.
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}