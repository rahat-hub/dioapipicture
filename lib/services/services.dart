import 'package:dio/dio.dart';

class ApiServices {
  Future<dynamic> postMethod({path,String? name, String? pass}) async {
    return await Dio()
        .post(path,
            data: {
              "username": name,
              "password": pass,
            },
            options: Options(responseType: ResponseType.json, method: 'POST'))
        .then((response) {
      print(response);
      return response;
    });
  }
  Future<dynamic> getMethod({url}) async{
    return await Dio().get(url,options: Options(responseType: ResponseType.json,method: 'GET')).then((response){
      print(response);
      return response;
    });
  }
}
