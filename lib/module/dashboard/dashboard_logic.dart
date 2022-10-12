import 'package:get/get.dart';

import '../../model/model_services.dart';
import '../../services/services.dart';

class DashboardLogic extends GetxController {

  RxList<DashboardModel> post = RxList();


  var url = 'https://fakestoreapi.com/products';

  getPost() async {
    var response = await ApiServices().getMethod(url: url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        post.add(DashboardModel.formJson(element));
      });
    }
  }
  @override
  void onInit() {
    getPost();
    super.onInit();
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

