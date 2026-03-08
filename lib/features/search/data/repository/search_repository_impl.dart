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
    try {
      final models = await remoteDataSource.getSearchedItems(query);
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } catch (error) {
      if (error is Failure) {
        return Left(error);
      }
      return Left(ServerFailure(error.toString()));
    }
  }
}
