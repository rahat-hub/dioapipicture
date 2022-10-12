import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          title: const Center(child: Text('Description')),
        ),
        body: Obx(() {
          return ListView(
            children: [
              SizedBox(
                width: 400,
                height: 300,
                child: Image.network(controller.post[index].image),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Center(
                  child: Text(
                    controller.post[index].title.toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 20.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    //controller.post[index].price.toString(),
                    controller.post[index].description.toString(),
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
