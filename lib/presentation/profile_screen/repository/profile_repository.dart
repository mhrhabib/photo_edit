import 'package:dio/dio.dart' as dio;

import 'package:photo_edit/data/apiClient/api_client.dart';
import 'package:photo_edit/data/base_urls/base_urls.dart';
import 'package:photo_edit/presentation/profile_screen/models/profile_model.dart';

class ProfileRepo{
  static Future<ProfileModel> getProfileRepo()async{
    try{
      dio.Response response = await BaseClient.get(url: BaseUrls.profileUrl);
      if(response.statusCode == 200){
        return ProfileModel.fromJson(response.data);
      }
      else{
        throw Exception("Failed to lead profile data");
      }
      
    }catch(e){
      rethrow;
    }


  }



}