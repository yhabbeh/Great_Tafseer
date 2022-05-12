part of 'book_mark_list_bloc.dart';

abstract class BookMarkListEvent extends Equatable
{
  @override
    List<Object?> get props => throw [];
}

class GetBookMarkPage extends BookMarkListEvent{
  final int indexPage;
  GetBookMarkPage(this.indexPage);

  @override
  List<Object?> get props => [indexPage];

  }

class RemoveRecordOfList extends BookMarkListEvent{}

class RemoveAllRecordsFromList extends BookMarkListEvent{}