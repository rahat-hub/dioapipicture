import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class LoaderHelperClass{
  static showLoader()async{
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = false;

    await EasyLoading.show();
  }

  static closeLoader() async{
    await EasyLoading.dismiss();
  }
}