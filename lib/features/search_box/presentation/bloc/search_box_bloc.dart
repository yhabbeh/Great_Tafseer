import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_box_event.dart';
part 'search_box_state.dart';

class SearchBoxBloc extends Bloc<SearchBoxEvent, SearchBoxState> {
  @override
  // TODO: implement initialState
  SearchBoxState get initialState => throw UnimplementedError();

  @override
  Stream<SearchBoxState> mapEventToState(SearchBoxEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
