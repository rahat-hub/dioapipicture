import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/constants/font_sizes.dart';
import '../../../widgets/texts.dart';
import '../dashboard_logic.dart';

class DetailsView extends GetView<DashboardLogic> {

  const DetailsView({required this.index,Key? key})
      : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Scaffold(
        backgroundColor: Color.lerp(Colors.white, Colors.blueAccent, 0.3),
        appBar: AppBar(
          title: Center(child: Text(controller.post[index].title.toString()),
        ),
        ),
        body: Obx(() {
          return Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10.0),
            shadowColor: ConstColors.TEXTBLUE,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      controller.post[index].category.toString(),
                      style: Texts.textStyles(colors: ConstColors.GREY,textSize: FontSizes.SMALL,fontWeight: FontWeight.w200),
                    ),),
                  SizedBox(
                    //height: MediaQuery.of(context).size.height*0.5,
                    height: 250,
                    child: Image.network(
                      controller.post[index].image.toString(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      controller.post[index].title.toString(),
                      maxLines: 1,
                      style: Texts.textStyles(fontWeight: FontWeight.w400,textSize: FontSizes.BIG),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\$ ${controller.post[index].price.toString()}",
                      style: Texts.textStyles(textSize: FontSizes.MEDIUM),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Descriptions:\n${controller.post[index].description.toString()}",
                      textAlign: TextAlign.justify,
                      style: Texts.textStyles(textSize: FontSizes.MEDIUM,colors: ConstColors.GREY),
                    ),
                  ),
                ],
              ),
            ),
          );

        }));
  }
}
