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

  logIn() async {
    var response = await apiServices!.postMethod(
        path: 'https://fakestoreapi.com/auth/login',
    name: userFieldKey.currentState!.value,
      pass: passFieldKey.currentState!.value,
    );
    try{
      if (response.statusCode == 200) {
        Get.offNamed(AppRoutes.DASHBOARD);
      }
      else{
        return response;
      }
    }
    catch(e){
      return Get.snackbar(
        'Notification',
        'No notifications',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: ConstColors.TRANSPARENT,
        colorText: ConstColors.GREY,
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Icons.thumb_up,
          color: ConstColors.BLUE,
        ),
        shouldIconPulse: false,
      );
    }

  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}