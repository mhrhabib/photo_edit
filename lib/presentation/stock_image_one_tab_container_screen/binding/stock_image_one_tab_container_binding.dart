import '../controller/stock_image_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StockImageOneTabContainerScreen.
///
/// This class ensures that the StockImageOneTabContainerController is created when the
/// StockImageOneTabContainerScreen is first loaded.
class StockImageOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StockImageOneTabContainerController());
  }
}
