import 'package:flutter/cupertino.dart';
import 'dimension.dart';

mixin SizeUtil {

  double getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  double getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double getHeight(BuildContext context, double designHeight) {
    double screenHeight = MediaQuery.of(context).size.height;
    double newHeight = screenHeight * designHeight / Dimensions.designScreenHeight;
    return newHeight < designHeight ? designHeight : newHeight;
  }

  double getWidth(BuildContext context, double designWidth) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth * designWidth / Dimensions.designScreenWidth;
  }

  double getHeightByRatio(BuildContext context, double designHeight) {
    double screenHeight = MediaQuery.of(context).size.height;
    return designHeight / Dimensions.designScreenHeight * screenHeight;
  }

  double getWidthByRatio(BuildContext context, double designWidth) {
    double screenWidth = MediaQuery.of(context).size.width;
    return designWidth / Dimensions.designScreenWidth * screenWidth;
  }
}