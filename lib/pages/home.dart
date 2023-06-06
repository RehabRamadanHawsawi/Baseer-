



import 'package:baseer_application_1/pages/color.dart';
import 'package:baseer_application_1/pages/food.dart';
import 'package:baseer_application_1/pages/medicine.dart';
import 'package:baseer_application_1/pages/price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


                   
             
               
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get firstCamera => null;

 @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 254, 184, 166),
            elevation: 0,
            title: Text(
              AppLocalizations.of(context)!.homepage,
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
                   body:  Align(
                  alignment: Alignment.center,
                  child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                    
                    SizedBox(
                    width: 200.0,
                    height: 70.0,    
                    child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 254, 184, 166),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    ),),
                      onPressed: () {Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const price()));},
                     child: Text(AppLocalizations.of(context)!.price,
                     style: const TextStyle(fontFamily: 'Amiri', 
                      fontSize: 18 ,
                      fontWeight: FontWeight.bold ,color: Colors.black, ),
                      
                      ),
                     ),),
//-----------------------------------------------------------------------------------COLORS
                     const SizedBox(height: 30.0,),

                     SizedBox(
                     width: 200.0,
                     height: 70.0,    
                     child:ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     backgroundColor:const Color.fromARGB(255, 254, 184, 166),
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                     ),), 
                     onPressed: () {Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const ColorPage()));},
                     child: Text(AppLocalizations.of(context)!.colors,
                     style: const TextStyle(fontFamily: 'Amiri', 
                      fontSize: 18 ,
                      fontWeight: FontWeight.bold ,color: Colors.black, ),
                      
                      ),

                    ),),
//------------------------------------------------------------------------------------FOOOD
                     const SizedBox(height: 30.0,),

                     SizedBox(
                     width: 200.0,
                     height: 70.0,    
                     child:ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     backgroundColor:const Color.fromARGB(255, 254, 184, 166),
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                     ),), 
                     onPressed: () {Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const FoodPage()));},
                     child: Text(AppLocalizations.of(context)!.food,
                     style: const TextStyle(fontFamily: 'Amiri', 
                      fontSize: 18 ,
                      fontWeight: FontWeight.bold ,color: Colors.black, ),
                      
                      ),
                     ),),
//-----------------------------------------------------------------------------------------------MEDICINE
                     const SizedBox(height: 30.0,),

                     SizedBox(
                     width: 200.0,
                     height: 70.0,
                     child:
                     ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     backgroundColor:const Color.fromARGB(255, 254, 184, 166),
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                     ),), 
                     onPressed: () {Navigator.push(context,
                     MaterialPageRoute(builder: (context) => const MedicinePage()));},
                     child: Text(AppLocalizations.of(context)!.medicine,
                     style: const TextStyle(fontFamily: 'Amiri', 
                      fontSize: 18 ,
                      fontWeight: FontWeight.bold ,color: Colors.black, ),
                      
                      ),
                     
         ),
        ), 
      ],
     ),
    ),
    ), 
   ),
   );
} 
}
