import 'package:dartz/dartz.dart';
import '../entities/store_item_entity.dart';
import '../../../../core/error/failure.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<StoreItemEntity>>> getSearchedItems(String query);
}
