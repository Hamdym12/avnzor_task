part of 'search_cubit.dart';

@immutable
sealed class SearchState extends Equatable {
  const SearchState();
  @override
  List<Object?> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<StoreItemEntity> items;
  const SearchSuccess(this.items);

  @override
  List<Object?> get props => [items];
}

final class SearchError extends SearchState {
  final String errorMessage;
  const SearchError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
