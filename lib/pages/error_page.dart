import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String errorMessage;

  const ErrorPage({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 253, 252, 252),
          elevation: 0,
          title: const Text(
            'رسلة خطاء ',
            style: TextStyle(
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
          children: [
            const Image(
              image: AssetImage('images/LOGO-.png'),
              width: 550,
              height: 550,
            ),
            const Icon(
              Icons.error_outline,
              size: 100,
              color: Colors.red,
            ),
            const SizedBox(height: 15),
            Text(
              errorMessage,
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton( style: ElevatedButton.styleFrom(
                     backgroundColor:const Color.fromARGB(255, 254, 184, 166),
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                     ),),
              child: const Text('Try Again' ,),
              onPressed: () {
                // Navigate back to camera screen
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

