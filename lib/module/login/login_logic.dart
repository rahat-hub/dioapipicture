import 'package:dio/dio.dart';
import 'package:dioapipicture/helper/LoaderHelperClass.dart';
import 'package:dioapipicture/routes/app_routes.dart';
import 'package:dioapipicture/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../shared/constants/colors.dart';


class LoginLogic extends GetxController {

  var formKey = GlobalKey<FormBuilderState>();
  var userFieldKey = GlobalKey<FormBuilderFieldState>();
  var passFieldKey = GlobalKey<FormBuilderFieldState>();
  var isPasswordHidden = true.obs;

  ApiServices? apiServices = ApiServices();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  logIn() async {
    try {
      LoaderHelperClass.showLoader();
      var response = await apiServices!.postMethod(
        path: 'https://fakestoreapi.com/auth/login',
        name: userFieldKey.currentState!.value,
        pass: passFieldKey.currentState!.value,
      );
      await Future.delayed(const Duration(seconds: 3));
      if (response.statusCode == 200) {
        Get.offNamed(AppRoutes.DASHBOARD);
        LoaderHelperClass.closeLoader();
      }
    }
    on DioError catch (e) {
      LoaderHelperClass.closeLoader();
      Get.snackbar(
        'ERROR',
        e.response.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstColors.BLUE,
        colorText: ConstColors.TEXTCOLORS,
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Icons.error_outline_outlined,
          color: Colors.red,
          size: 30,
        ),
        shouldIconPulse: false,
      );
    }
  }

}
