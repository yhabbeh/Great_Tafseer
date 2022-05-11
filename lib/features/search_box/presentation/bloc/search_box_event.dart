part of 'search_box_bloc.dart';

abstract class SearchBoxEvent extends Equatable {}

class GetSearchResult extends SearchBoxEvent{
  final String indexPage;
  GetSearchResult(this.indexPage);

  @override
  List<Object?> get props => [indexPage];

}