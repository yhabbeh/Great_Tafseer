import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mian/core/usecases/usecases.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/util/input_converter.dart';
import '../../../homePage/presentation/bloc/great_tafseer_bloc.dart';
import '../../domain/entites/book_mark_list.dart';
import '../../domain/usecase/get_page_of_record.dart';
import '../../domain/usecase/remove_all_records_from_list.dart';
import '../../domain/usecase/remove_record_of_list.dart';

part 'book_mark_list_event.dart';

part 'book_mark_list_state.dart';

class BookMarkListBloc extends Bloc<BookMarkListEvent, BookMarkListState> {
  final GetPageOfRecord getPageOfRecord;
  final RemoveRecordFromBookMarkList removeRecordFromBookMarkList;
  final RemoveAllRecordsFromBookMarkList removeAllRecordsFromBookMarkList;
  final InputConverter inputConverter;

  BookMarkListBloc({
    required this.getPageOfRecord,
    required this.removeRecordFromBookMarkList,
    required this.removeAllRecordsFromBookMarkList,
    required this.inputConverter,
  });
  @override
  BookMarkListState get initialState => GetPageOfRecordInitial();

  @override
  Stream<BookMarkListState> mapEventToState(BookMarkListEvent event) async* {
    if (event is GetBookMarkPage)
    {
      final inputEither = inputConverter.stringToUnsignedInteger(
          event.indexPage.toString());
      yield* inputEither.fold(
            (failure) async* {
          yield const GetPageOfRecordError(
              message: INVALID_INPUT_FAILURE_MESSAGE);
        },
            (integer) async*
        {
          yield GetPageOfRecordLoading();
          final failureOrPage =
          await getPageOfRecord(Params( indexPage:integer  ));
          yield failureOrPage!.fold(
                (failure) =>
            throw ViewPageStateError(
              message: _mapFailureToMessage(failure),
            ),
                (page) => GetPageOfRecordLoaded(page: page),
          );
        },
      );
    }
    else if
    (event is RemoveAllRecordsFromList)
    {
      yield RemoveAllRecordsFromListLoading();
      final failureOrPage = await removeRecordFromBookMarkList(NoParams());

      yield failureOrPage!.fold(
            (failure) =>
        throw RemoveAllRecordsFromListError(
          message: _mapFailureToMessage(failure),
        ),
            (page) => RemoveAllRecordsFromListLoaded(bookMarkList:page ),
      );
    }
    else if
    (event is RemoveRecordOfList)
    {
      yield RemoveRecordOfListLoading();
      final failureOrPage = await removeRecordFromBookMarkList(NoParams());

      yield failureOrPage!.fold(
            (failure) =>
        throw RemoveRecordOfListError(
          message: _mapFailureToMessage(failure),
        ),
            (page) => RemoveRecordOfListLoaded(bookMarkList:page ),
      );
    }
  }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;
    case CacheFailure:
      return CACHE_FAILURE_MESSAGE;
    default:
      return 'Unexpected error';
  }
}