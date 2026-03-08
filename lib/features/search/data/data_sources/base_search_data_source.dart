import 'package:avnzor_task/core/error/failure.dart';
import 'package:avnzor_task/features/search/data/models/store_item_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseSearchDataSource {
  Future<Either<Failure,List<StoreItemModel>>> getSearchedItems(String query);
}
