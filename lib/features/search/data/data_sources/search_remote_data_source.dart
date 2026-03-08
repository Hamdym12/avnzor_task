import 'package:avnzor_task/core/error/failure.dart';
import 'package:avnzor_task/features/search/data/data_sources/base_search_data_source.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/networking/api_client.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/store_item_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: BaseSearchDataSource)
class SearchRemoteDataSourceImpl implements BaseSearchDataSource {
  final ApiClient apiClient;

  SearchRemoteDataSourceImpl(this.apiClient);

  @override
  Future<Either<Failure,List<StoreItemModel>>> getSearchedItems(String query) async {
    final response = await apiClient.post(
      endPoint: ApiConstants.searchForContent,
      data: {
        "query": query.isNotEmpty ? query : "food",
        "location": {
          "lat": 24.625762,
          "lng": 46.218625
        },
        "page": 1,
        "perPage": 12
      },
    );
    try{
      if(response.statusCode == 200 ){
        final List data = response.data is List
            ? response.data
            : (response.data['dataResponse']['stores'] ?? []);

        return right(data.map((json) => StoreItemModel.fromJson(json)).toList());
      }else{
        return left(Failure.fromException(response.data));
      }
    }catch(e){
      return left(Failure.fromException(e));
    }
  }
}
