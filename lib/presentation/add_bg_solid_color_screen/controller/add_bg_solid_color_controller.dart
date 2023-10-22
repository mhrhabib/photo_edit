import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/add_bg_solid_color_screen/models/add_bg_solid_color_model.dart';

/// A controller class for the AddBgSolidColorScreen.
///
/// This class manages the state of the AddBgSolidColorScreen, including the
/// current addBgSolidColorModelObj
class AddBgSolidColorController extends GetxController {
  Rx<AddBgSolidColorModel> addBgSolidColorModelObj = AddBgSolidColorModel().obs;
}
