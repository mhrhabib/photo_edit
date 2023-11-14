
import 'package:get/get.dart';
import 'package:photo_edit/presentation/profile_screen/models/profile_model.dart' as modl ;

import 'package:photo_edit/presentation/profile_screen/repository/profile_repository.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  // TextEditingController nameController = TextEditingController();

  // TextEditingController passwordController = TextEditingController();
  var data = modl.Data().obs;


  fetchProfileData () async{
    final response = await ProfileRepo.getProfileRepo();
    if(response.status ==true){
      //final resData = ProfileModel.fromJson(response.dart);
      

      data.value =response.data!;

    }
  }





  @override
  void onClose() {
    super.onClose();
    // nameController.dispose();
    // passwordController.dispose();
  }

  // onSelected(dynamic value) {
  //   for (var element in profileModelObj.value.dropdownItemList.value) {
  //     element.isSelected = false;
  //     if (element.id == value.id) {
  //       element.isSelected = true;
  //     }
  //   }
  //   profileModelObj.value.dropdownItemList.refresh();
  // }
}
