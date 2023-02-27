import 'package:flutter/material.dart';

class DeviceDimensions {
  static deviceHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  static deviceWidth(context) {
    return MediaQuery.of(context).size.width;
  }
}
