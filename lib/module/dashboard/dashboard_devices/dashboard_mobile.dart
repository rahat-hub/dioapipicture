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

  const DashboardMobilePagePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
      appBar: AppBar(
        title: const Center(child: Text('Dio_Text_Api')),
      ),
      body: Obx(
        () => RefreshIndicator(
          color: Colors.red,
          backgroundColor: Colors.blue,
          onRefresh: () async{
            controller.post.length = 0;
            return await controller.getPost();
          },
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: controller.post.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  child: MaterialButton(
                    elevation: 5,
                    color: ConstColors.WHITE,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    onPressed: () {
                      Get.to(() => DetailsView(index: index));
                    },
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Align(
                             alignment: Alignment.centerLeft,
                             child: Text(
                               controller.post[index].category.toString(),
                               style: Texts.textStyles(colors: ConstColors.GREY,textSize: FontSizes.SMALL,fontWeight: FontWeight.w200),
                            ),),
                          SizedBox(
                            height: 130.0,
                            child: Image.network(
                              controller.post[index].image.toString(),
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                controller.post[index].title.toString(),
                                maxLines: 1,
                                style: Texts.textStyles(textSize: FontSizes.REGULAR),
                              ),
                              ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                  "\$${controller.post[index].price.toString()}",style: Texts.textStyles(textSize: FontSizes.REGULAR) ,)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class DashboardMobilePageLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  const DashboardMobilePageLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('hello');
  }
}
