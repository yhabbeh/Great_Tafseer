import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mian/features/homePage/domain/entites/great_tafseer.dart';
part 'great_tafseer_event.dart';
part 'great_tafseer_state.dart';

class GreatTafseerBloc extends Bloc<GreatTafseerEvent, GreatTafseerState> {



  @override
  GreatTafseerState get initialState => throw UnimplementedError();

  @override
  Stream<GreatTafseerState> mapEventToState(GreatTafseerEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
