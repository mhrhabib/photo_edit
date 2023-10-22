import '../../../core/app_export.dart';/// This class is used in the [stock_image_item_widget] screen.
class StockImageItemModel {StockImageItemModel({this.frame, this.id, }) { frame = frame  ?? Rx("All");id = id  ?? Rx(""); }

Rx<String>? frame;

Rx<String>? id;

 }
