import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../domain/entities/store_item_entity.dart';
import '../../domain/usecases/get_searched_items_usecase.dart';

part 'search_state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final GetSearchedItemsUseCase getSearchedItemsUseCase;

  SearchCubit(this.getSearchedItemsUseCase) : super(SearchInitial());

  Future<void> searchItems(String query) async {
    emit(SearchLoading());
    final result = await getSearchedItemsUseCase(query);
    result.fold(
      (failure) => emit(SearchError(failure.message)),
      (items) => emit(SearchSuccess(items)),
    );
  }
}
