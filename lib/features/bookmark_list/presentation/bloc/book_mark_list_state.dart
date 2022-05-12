part of 'book_mark_list_bloc.dart';

abstract class BookMarkListState extends Equatable {
  const BookMarkListState();

  @override
  List<Object> get props => [];
}

class GetPageOfRecordInitial extends BookMarkListState {}
class GetPageOfRecordLoading extends BookMarkListState {}
class GetPageOfRecordLoaded extends BookMarkListState {
  final BookMarkList  page ;
  const GetPageOfRecordLoaded({required this.page});
}
class GetPageOfRecordError extends BookMarkListState {
  final String message;
  const GetPageOfRecordError({required this.message});

}


class RemoveAllRecordsFromListLoading extends BookMarkListState {}
class RemoveAllRecordsFromListLoaded extends BookMarkListState {
  final BookMarkList  bookMarkList ;
  const RemoveAllRecordsFromListLoaded({required this.bookMarkList});
}
class RemoveAllRecordsFromListError extends BookMarkListState {
  final String message;
  const RemoveAllRecordsFromListError({required this.message});

}


class RemoveRecordOfListLoading extends BookMarkListState {}
class RemoveRecordOfListLoaded extends BookMarkListState {
  final BookMarkList  bookMarkList ;
  const RemoveRecordOfListLoaded({required this.bookMarkList});
}
class RemoveRecordOfListError extends BookMarkListState {
  final String message;
  const RemoveRecordOfListError({required this.message});

}
