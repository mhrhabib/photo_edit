import 'package:photo_edit/data/apiClient/api_client.dart';
import 'package:photo_edit/presentation/login_screen/models/login_model.dart';
import 'package:dio/dio.dart' as dio; 

class LoginRepo{
  static Future<Login> login ({String? phone, String? password})async{
    var data = {
      "phone": phone,
      "password" : password,
    };
    
    try {
      dio.Response response = await BaseClient.post(url: "http://dtaskly.drutosoft.net/api/login",payload: data);
      if(response.statusCode ==200){
        print("successful");
        return Login.fromJson(response.data);
        
      }
      else{
        
        print("unsuccessful");
      }
      throw "${response.statusMessage}";
    } catch (e) {
      rethrow ;
    }
  }



}