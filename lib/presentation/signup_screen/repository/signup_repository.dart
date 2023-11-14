import 'package:photo_edit/data/apiClient/api_client.dart';
import 'package:photo_edit/presentation/signup_screen/models/signup_model.dart';
import 'package:dio/dio.dart' as dio;

class SignUpRepo{
  static Future<SignupModel> signUp(
    {
    required String name,
    required String email,
    required String phone,
    required String gender,
    required String photo,
    required String password,
    }
    
  ) async {

    var data = {
        "name": name,
        "email": email,
        "phone": phone,
        "gender": gender,
        "photo": photo,
        "password": password,
    };

    try {
      dio.Response response = await BaseClient.post(
        url: "http://dtaskly.drutosoft.net/api/register", 
        payload: data, 
      );

      if(response.statusCode ==200){
        print("Successful");
      }else{
        print("Unsuccessful");
      }
      throw "${response.statusMessage}";
    } catch (e) {
      rethrow;
    }



  }

}