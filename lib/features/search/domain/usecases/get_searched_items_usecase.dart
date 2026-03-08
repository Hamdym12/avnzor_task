import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../entities/store_item_entity.dart';
import '../repository/search_repository.dart';

@injectable
class GetSearchedItemsUseCase {
  final SearchRepository repository;

  GetSearchedItemsUseCase(this.repository);

  Future<Either<Failure, List<StoreItemEntity>>> call(String query) async {
    return await repository.getSearchedItems(query);
  }
}
