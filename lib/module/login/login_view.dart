import 'package:dioapipicture/module/login/login_devices/login_mobile.dart';
import 'package:dioapipicture/module/login/login_devices/login_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();

    return ResponsiveBuilder(
      builder: (context,sizingInformation){
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            landscape: (context) => LoginPageMobileLandscape(sizingInformation: sizingInformation,),
            portrait: (context) => LoginPageMobilePortrait(sizingInformation: sizingInformation,),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => LoginPageTabletPortrait(sizingInformation: sizingInformation,),
            landscape: (context) => LoginPageTabletLandscape(sizingInformation: sizingInformation,),
          ),
        );
      },
    );
  }
}
