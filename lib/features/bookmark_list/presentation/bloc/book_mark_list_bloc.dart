import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'book_mark_list_event.dart';
part 'book_mark_list_state.dart';

class BookMarkListBloc extends Bloc<BookMarkListEvent, BookMarkListState> {

  @override
  // TODO: implement initialState
  BookMarkListState get initialState => throw UnimplementedError();

  @override
  Stream<BookMarkListState> mapEventToState(BookMarkListEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
