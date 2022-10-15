import 'package:get/get.dart';

import '../../helper/LoaderHelperClass.dart';
import '../../model/model_services.dart';
import '../../services/services.dart';

class DashboardLogic extends GetxController {

  RxList<DashboardModel> post = RxList();


  var url = 'https://fakestoreapi.com/products';

  getPost() async {
    try{
      LoaderHelperClass.showLoader();
      var response = await ApiServices().getMethod(url: url);
      await Future.delayed(const Duration(seconds: 2));
      if (response.statusCode == 200) {
        response.data.forEach((element) {
          post.add(DashboardModel.formJson(element));
          LoaderHelperClass.closeLoader();
        });
      }
    }
    catch(e){}

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

