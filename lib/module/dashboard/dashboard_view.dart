import 'package:dioapipicture/module/dashboard/dashboard_devices/dashboard_mobile.dart';
import 'package:dioapipicture/module/dashboard/dashboard_devices/dashboard_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'dashboard_logic.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();

    return ResponsiveBuilder(
      builder: (context,sizingInformation){
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => DashboardMobilePagePortrait(sizingInformation: sizingInformation,),
            landscape: (context) => DashboardMobilePageLandscape(sizingInformation: sizingInformation,),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => DashboardTabletPagePortrait(sizingInformation: sizingInformation,),
            landscape: (context) => DashboardTabletPageLandscape(sizingInformation: sizingInformation,),
          ),
        );
      },
    );
  }
}
