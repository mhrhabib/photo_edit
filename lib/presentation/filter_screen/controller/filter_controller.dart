import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/filter_screen/models/filter_model.dart';/// A controller class for the FilterScreen.
///
/// This class manages the state of the FilterScreen, including the
/// current filterModelObj
class FilterController extends GetxController {Rx<FilterModel> filterModelObj = FilterModel().obs;

 }
