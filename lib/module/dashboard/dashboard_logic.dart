import 'package:get/get.dart';

import '../../model/model_services.dart';
import '../../services/services.dart';

class DashboardLogic extends GetxController {

  RxList<DashboardModel> post = RxList();


  var url = 'https://fakestoreapi.com/products';

  getPost() async {
    try{
      var response = await ApiServices().getMethod(url: url);
      if(response.statusCode == 200){
        response.data.forEach((element){
          post.add(DashboardModel.formJson(element));
        });
      }
    }
    catch(e){}

  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getPost();
  }


  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}

