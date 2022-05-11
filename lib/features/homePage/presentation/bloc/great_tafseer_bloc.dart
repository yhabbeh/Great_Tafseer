import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mian/core/util/input_converter.dart';
import 'package:mian/features/homePage/domain/entites/great_tafseer.dart';
import 'package:mian/features/homePage/domain/usecase/swipe_page_view.dart';

import '../../../../core/error/failures.dart';

part 'great_tafseer_event.dart';

part 'great_tafseer_state.dart';


const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid input - the number must be  positive integer or zero.';


class GreatTafseerBloc extends Bloc<GreatTafseerEvent, GreatTafseerState> {
  final SwipePageView swipePageView;
  final InputConverter inputConverter;

  GreatTafseerBloc({required this.inputConverter, required this.swipePageView});

  @override
  GreatTafseerState get initialState => ViewPageInitial();

  @override
  Stream<GreatTafseerState> mapEventToState(GreatTafseerEvent event) async* {
    if (event is GetSwipePageView) {
      final inputEither = inputConverter.stringToUnsignedInteger(
          event.indexPage.toString());
      yield* inputEither.fold(
            (failure) async* {
          yield const ViewPageStateError(
              message: INVALID_INPUT_FAILURE_MESSAGE);
        },
            (integer) async*
        {
          yield ViewPageStateLoading();
          final failureOrPage =
          await swipePageView(Params(index: integer));

          yield failureOrPage!.fold(
                (failure) =>
            throw ViewPageStateError(
              message: _mapFailureToMessage(failure),
            ),
                (page) => ViewPageStateLoaded(greatTafseer: page),
          );
        },
      );
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
}