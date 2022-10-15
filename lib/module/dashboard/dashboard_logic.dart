import 'package:get/get.dart';

import '../../model/model_services.dart';
import '../../services/services.dart';

class DashboardLogic extends GetxController {

  RxList<DashboardModel> post = RxList();


  var url = 'https://fakestoreapi.com/products';
  RxBool isLoaded = false.obs;

  getPost() async {
    var response = await ApiServices().getMethod(url: url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        post.add(DashboardModel.formJson(element));
        isLoaded = true.obs;
      });
    }
  }

  // getSamePost({index}) {
  //   if(post[index].category == ){}
  // }

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

