/*import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'FoodRE.dart';

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen(Type cameraDescription, {
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  FoodPage createState() => FoodPage();
}
//صقف
class FoodPage extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera,ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar:AppBar(
            backgroundColor: Color.fromARGB(255, 253, 252, 252),
              elevation: 0,    
            title: const Text('الاكل',
            style:
              TextStyle(fontFamily: 'Amiri', color: Colors.black, fontSize: 25),),
              //fontWeight: FontWeight.w900يخلي الخط بال bold  
            titleSpacing: 0.0,
            centerTitle: true,
            leading:ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     backgroundColor:const Color.fromARGB(255, 254, 184, 166),),
                     onPressed: () {Navigator.of(context).pop();},
                     child: Text('الخلف')
                     ),
                     leadingWidth:70,
             ),      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
         try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await _controller.takePicture();

            if (!mounted) return;

            // If the picture was taken, display it on a new screen.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FoodRE(imagePath: image.path),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        }, 
        icon:const Icon(Icons.camera_alt),
        backgroundColor:const Color.fromARGB(255, 254, 184, 166), 
        label:const Text('التقاط'), 
        ),
      );
  }
}
Future<void> play() async {

                    WidgetsFlutterBinding.ensureInitialized();
                    final cameras = await availableCameras();
                    final firstCamera = cameras.first;   }
*/