
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'medicineRE.dart';
import 'dart:io';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class MedicinePage extends StatefulWidget {
  const MedicinePage({super.key});

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

// Add the WidgetsBindingObserver mixin
class _MedicinePageState extends State<MedicinePage> with WidgetsBindingObserver {
  bool _isPermissionGranted = false;

  late final Future<void> _future;

  // Add this controller to be able to control de camera
  CameraController? _cameraController;
final _textRecognizer = TextRecognizer();


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _future = _requestCameraPermission();
  }

  // We should stop the camera once this widget is disposed
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _stopCamera();
    _textRecognizer.close();
    super.dispose();
  }

  // Starts and stops the camera according to the lifecycle of the app
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      _stopCamera();
    } else if (state == AppLifecycleState.resumed &&
        _cameraController != null &&
        _cameraController!.value.isInitialized) {
      _startCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
        return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Stack(
          children: [
            // Show the camera feed behind everything
            if (_isPermissionGranted)
              FutureBuilder<List<CameraDescription>>(
                future: availableCameras(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    _initCameraController(snapshot.data!);

                    return Center(child: CameraPreview(_cameraController!));
                  } else {
                    return const LinearProgressIndicator();
                  }
                },
              ),
            Scaffold(
            appBar:PreferredSize( //wrap with PreferredSize
            preferredSize: const Size.fromHeight(65),
            child:AppBar(
            backgroundColor: const Color.fromARGB(255, 253, 252, 252),
              elevation: 0,    
            title: Text(
              AppLocalizations.of(context)!.medicine,
              style: const TextStyle(fontFamily: 'Amiri', color: Colors.black, fontSize: 25),),
              //fontWeight: FontWeight.w900يخلي الخط بال bold  
            titleSpacing: 0.0,
            centerTitle: true,
            leading:ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     backgroundColor: const Color.fromARGB(255, 254, 184, 166),),
                     onPressed: () {Navigator.of(context).pop();},
                     child: Text(AppLocalizations.of(context)!.back,
                     style: const TextStyle( color: Colors.black ,))
                     ),
                     leadingWidth:70,
             ), ), 
              // Set the background to transparent so you can see the camera preview
              backgroundColor: _isPermissionGranted ? Colors.transparent : null,
              body: _isPermissionGranted
                  ? Column(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: FloatingActionButton.extended(
                                  onPressed: () async {
                                  await _scanImage();
                                },
                             icon:const Icon(Icons.camera_alt , color:Colors.black ,),
                              backgroundColor:const Color.fromARGB(255, 254, 184, 166), 
                              label:const Text('التقاط',
                               style: TextStyle( color: Colors.black ,)),                           
                              ),
                        ),
                      ],
                    ): Center(
                      child: Container(
                        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                        child: const Text(
                          'تم رفض إذن الكاميرا',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    _isPermissionGranted = status == PermissionStatus.granted;
  }

  void _startCamera() {
    if (_cameraController != null) {
      _cameraSelected(_cameraController!.description);
    }
  }

  void _stopCamera() {
    if (_cameraController != null) {
      _cameraController?.dispose();
    }
  }

  void _initCameraController(List<CameraDescription> cameras) {
    if (_cameraController != null) {
      return;
    }

    // Select the first rear camera.
    CameraDescription? camera;
    for (var i = 0; i < cameras.length; i++) {
      final CameraDescription current = cameras[i];
      if (current.lensDirection == CameraLensDirection.back) {
        camera = current;
        break;
      }
    }

    if (camera != null) {
      _cameraSelected(camera);
    }
  }

  Future<void> _cameraSelected(CameraDescription camera) async {
    _cameraController = CameraController(
      camera,
      ResolutionPreset.max,
      enableAudio: false,
    );

    await _cameraController!.initialize();

    if (!mounted) {
      return;
    }
    setState(() {});
  }
Future<void> _scanImage() async {
  if (_cameraController == null) return;

  final navigator = Navigator.of(context);

  try {
    final pictureFile = await _cameraController!.takePicture();

    final file = File(pictureFile.path);

    final inputImage = InputImage.fromFile(file);
    final recognizedText = await _textRecognizer.processImage(inputImage);

    await navigator.push(
      MaterialPageRoute(
        builder: (BuildContext context) =>medicineRE(text: recognizedText.text),
      ),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('حدث خطأ أثناء مسح النص'),
        ),
      );
    }
  }
}