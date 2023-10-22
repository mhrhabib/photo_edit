import '../controller/stock_image_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StockImageTwoScreen.
///
/// This class ensures that the StockImageTwoController is created when the
/// StockImageTwoScreen is first loaded.
class StockImageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockImageTwoController());
  }
}
