import 'package:avnzor_task/features/search/data/data_sources/base_search_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/store_item_entity.dart';
import '../../domain/repository/search_repository.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final BaseSearchDataSource remoteDataSource;

  SearchRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<StoreItemEntity>>> getSearchedItems(
    String query,
  ) async {
    final result = await remoteDataSource.getSearchedItems(query);
    return result.map(
      (models) => models.map((model) => model.toEntity()).toList(),
    );
  }
}
