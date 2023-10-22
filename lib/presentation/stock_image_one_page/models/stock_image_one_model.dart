import '../../../core/app_export.dart';import 'stock_image_one_item_model.dart';/// This class defines the variables used in the [stock_image_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StockImageOneModel {Rx<List<StockImageOneItemModel>> stockImageOneItemList = Rx(List.generate(15,(index) => StockImageOneItemModel()));

 }
