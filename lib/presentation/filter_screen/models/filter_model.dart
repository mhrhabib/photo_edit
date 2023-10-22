import '../../../core/app_export.dart';import 'listview_item_model.dart';/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<ListviewItemModel>> listviewItemList = Rx(List.generate(3,(index) => ListviewItemModel()));

 }
