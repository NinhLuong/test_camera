import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'utils.dart';
import 'app_localizations.dart';

import 'asset_path.dart';
import 'color_theme.dart';
import 'dimension.dart';

class CheckInButton extends StatelessWidget with SizeUtil{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
          onPressed: () {

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
                  width: getWidth(context, Dimensions.padding16),
                ),
                Text(
                  AppLocalizations.of(context)!.check_in,
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
