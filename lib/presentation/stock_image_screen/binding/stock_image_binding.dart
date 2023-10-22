import '../controller/stock_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StockImageScreen.
///
/// This class ensures that the StockImageController is created when the
/// StockImageScreen is first loaded.
class StockImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockImageController());
  }
}
