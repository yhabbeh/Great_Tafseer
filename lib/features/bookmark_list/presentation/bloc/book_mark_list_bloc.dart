import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'book_mark_list_event.dart';
part 'book_mark_list_state.dart';

class BookMarkListBloc extends Bloc<BookMarkListEvent, BookMarkListState> {
  BookMarkListBloc() : super(BookMarkListInitial()) {
    on<BookMarkListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
