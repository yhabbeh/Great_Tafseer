part of 'search_box_bloc.dart';

abstract class SearchBoxState extends Equatable {
  const SearchBoxState();
}

class SearchBoxInitial extends SearchBoxState {
  @override
  List<Object> get props => throw UnimplementedError();
}
