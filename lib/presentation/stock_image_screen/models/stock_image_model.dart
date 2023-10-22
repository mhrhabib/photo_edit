import '../../../core/app_export.dart';import 'stock_image_item_model.dart';import 'stock_image1_item_model.dart';/// This class defines the variables used in the [stock_image_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StockImageModel {Rx<List<StockImageItemModel>> stockImageItemList = Rx(List.generate(7,(index) => StockImageItemModel()));

Rx<List<StockImage1ItemModel>> stockImage1ItemList = Rx(List.generate(15,(index) => StockImage1ItemModel()));

 }
