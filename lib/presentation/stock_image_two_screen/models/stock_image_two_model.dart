import '../../../core/app_export.dart';import 'package:photo_edit/data/models/selectionPopupModel/selection_popup_model.dart';import 'stock_image_two_item_model.dart';/// This class defines the variables used in the [stock_image_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StockImageTwoModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<StockImageTwoItemModel>> stockImageTwoItemList = Rx(List.generate(15,(index) => StockImageTwoItemModel()));

 }