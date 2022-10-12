import 'package:dioapipicture/module/dashboard/dashboard_logic.dart';
import 'package:dioapipicture/shared/constants/colors.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_builder/responsive_builder.dart';
import '../product_description/product_description.dart';

class DashboardMobilePagePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  const DashboardMobilePagePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
        appBar: AppBar(
          title: const Center(child: Text('Dio_Text_Api')),
        ),
        body: Obx(() {
          return GridView.builder(
              itemCount: controller.post.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  child: MaterialButton(
                    onPressed: (){
                      Get.to(() => DetailsView(index: index));
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10.0),
                      shadowColor: ConstColors.TEXTBLUE,
                      child: Container(
                        height: 250,
                        width: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                height: 120,
                                child: Image.network(
                                  controller.post[index].image,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(alignment: Alignment.center,child: Text(controller.post[index].title.toString(),maxLines: 1,)),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0,20,5.0,10),
                                    child: Align(alignment: Alignment.bottomRight,child: Text("\$${controller.post[index].price}")),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        })
    );
  }
}

class DashboardMobilePageLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  const DashboardMobilePageLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('hello');
  }
}

