import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/add_background_screen/models/add_background_model.dart';

/// A controller class for the AddBackgroundScreen.
///
/// This class manages the state of the AddBackgroundScreen, including the
/// current addBackgroundModelObj
class AddBackgroundController extends GetxController {
  Rx<AddBackgroundModel> addBackgroundModelObj = AddBackgroundModel().obs;
}
