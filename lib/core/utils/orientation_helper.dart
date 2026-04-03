import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrientationHelper {
  static Future<void> setPortrait() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static Future<void> setLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  static Future<void> setAll() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}

mixin PortraitModeMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    OrientationHelper.setPortrait();
  }
}

mixin LandscapeModeMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    OrientationHelper.setLandscape();
  }
}
