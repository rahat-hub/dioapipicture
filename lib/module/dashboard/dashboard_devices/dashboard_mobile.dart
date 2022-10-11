import 'package:dioapipicture/module/dashboard/dashboard_logic.dart';
import 'package:dioapipicture/shared/constants/colors.dart';
import 'package:dioapipicture/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../widgets/texts.dart';
import '../product_description/product_description.dart';

class DashboardMobilePagePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobilePagePortrait({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
      appBar: AppBar(
        title: const Center(child: Text('Dio_Text_Api')),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Obx(() {
          return ListView.builder(
            itemCount: controller.post.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        print(index);
                        //Get.to(DetailsView(index: index,controller: controller,));
                        Get.to(() => DetailsView(controller: controller, index: index));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Image.network(
                                controller.post[index].image,
                                width: 50,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.post.length.toString(),
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                                Text(
                                  controller.post[index].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    controller.post[index].description,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 5,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}

class DashboardMobilePageLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobilePageLandscape({Key? key,this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
      appBar: AppBar(
        title: const Center(child: Text('Dio_Text_Api')),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Obx(() {
          return ListView.builder(
            itemCount: controller.post.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        print(index);
                        //Get.to(DetailsView(index: index,controller: controller,));
                        Get.to(() => DetailsView(controller: controller, index: index));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Image.network(controller.post[index].image,),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.post[index].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    controller.post[index].description,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 5,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
