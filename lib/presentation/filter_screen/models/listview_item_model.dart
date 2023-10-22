import '../../../core/app_export.dart';/// This class is used in the [listview_item_widget] screen.
class ListviewItemModel {ListviewItemModel({this.filterText, this.id, }) { filterText = filterText  ?? Rx("Filter\n5");id = id  ?? Rx(""); }

Rx<String>? filterText;

Rx<String>? id;

 }
