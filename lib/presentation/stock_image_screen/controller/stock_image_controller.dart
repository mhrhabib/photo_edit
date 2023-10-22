import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/stock_image_screen/models/stock_image_model.dart';/// A controller class for the StockImageScreen.
///
/// This class manages the state of the StockImageScreen, including the
/// current stockImageModelObj
class StockImageController extends GetxController {Rx<StockImageModel> stockImageModelObj = StockImageModel().obs;

 }
