// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class NewAdd {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else {
      throw UnsupportedError("unsuported Platform");
    }
  }

  static String get InterstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/1033173712';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/4411468918';
    } else {
      throw UnsupportedError("unsuported Platform");
    }
  }
}
