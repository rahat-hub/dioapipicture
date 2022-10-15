import 'package:dioapipicture/module/dashboard/dashboard_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';


class DashboardTabletPagePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardTabletPagePortrait({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('hello');
  }
}

class DashboardTabletPageLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardTabletPageLandscape({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello');
  }
}
