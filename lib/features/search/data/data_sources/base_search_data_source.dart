import 'package:avnzor_task/features/search/data/models/store_item_model.dart';

abstract class BaseSearchDataSource {
  Future<List<StoreItemModel>> getSearchedItems(String query);
}
