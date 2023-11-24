import 'dart:async';
import 'dart:io' if (dart.library.html) 'dart:html';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:test_enter_phone/subcribe_button.dart';
import 'asset_path.dart';
import 'color_theme.dart';
import 'dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'utils.dart';
import 'app_localizations.dart';


Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
}

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> with SizeUtil{
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
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
    // if (!_controller.value.isInitialized) {
    //   return Container();
    // }
    return Container(
        child: Column(
          children: <Widget>[
          Expanded(
              flex: 3,
              child: FutureBuilder<void>(
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
          ),
          Expanded(flex: 1,
              child: Container(
                height: getHeight(context, Dimensions.height120),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(getWidth(context, Dimensions.radius8))
                  ),
                ),

                child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
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
                            builder: (context) => DisplayPictureScreen(
                              // Pass the automatically generated path to
                              // the DisplayPictureScreen widget.
                              imagePath: image.path,
                            ),
                          ),
                        );
                      } catch (e) {
                        // If an error occurs, log the error to the console.
                        print(e);
                      }
                    },

                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(context, Dimensions.padding40),
                        top: getWidth(context, Dimensions.padding1086),

                      ),
                      child:  Row(
                        children: [
                          SvgPicture.asset(
                            AssetIconPaths.iconCheckInSvgPath,
                            width: getWidth(context, Dimensions.width40),
                            height: getHeight(context, Dimensions.height40),
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: getWidth(context, Dimensions.padding40),
                          ),
                          Text(
                            "Đăng ký thủ công",
                            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                              color: PRIMARY,
                              fontSize: getHeight(context, Dimensions.height36),
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,

                          )


                        ],

                      ),
                    )


                ),
              )
          ),

          ],

          )

    );
  }
}

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(imagePath)),
    );
  }
}