import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/util/input_converter.dart';
import '../../domain/entites/search_box.dart';
import '../../domain/usecase/search_bar.dart';
part 'search_box_event.dart';
part 'search_box_state.dart';

class SearchBoxBloc extends Bloc<SearchBoxEvent, SearchBoxState> {
  final SearchBar searchBar;

  SearchBoxBloc({required this.searchBar});

  @override
  SearchBoxState get initialState => SearchBoxInitial();

  @override
  Stream<SearchBoxState> mapEventToState(SearchBoxEvent event) async*{

      if (event is GetSearchResult) {

        yield SearchBoxLoading();
        final failureOrPage =
        await searchBar(Params(text: ''));

        yield* failureOrPage.fold(
    (failure) => throw UnimplementedError()
    (text) => yield SearchBoxLoaded(searchBox: text),
    );
      }else
      {
      yield const SearchBoxError(message: "asd");
    }
  }
}
