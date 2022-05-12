part of 'search_box_bloc.dart';

abstract class SearchBoxState extends Equatable {
  const SearchBoxState();

  @override
  List<Object> get props => [];
}
class SearchBoxInitial extends SearchBoxState {}
class SearchBoxLoading extends SearchBoxState {}
class SearchBoxLoaded extends SearchBoxState {
  final List<SearchBox>  searchBox ;
  const SearchBoxLoaded({required this.searchBox});
}
class SearchBoxError extends SearchBoxState {
  final String message;
  const SearchBoxError({required this.message});

}
