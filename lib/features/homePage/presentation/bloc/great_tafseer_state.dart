part of 'great_tafseer_bloc.dart';

abstract class GreatTafseerState extends Equatable {
  const GreatTafseerState();
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class ViewPageInitial extends GreatTafseerState {}
class ViewPageStateLoading extends GreatTafseerState {}
class ViewPageStateLoaded extends GreatTafseerState {
  final
  GreatTafseer greatTafseer;

  const ViewPageStateLoaded({required this.greatTafseer});

  @override
  List<Object?> get props => [greatTafseer];
}
class ViewPageStateError extends GreatTafseerState {
  final String message;

  const ViewPageStateError({required this.message});
  @override
  // TODO: implement props
  List<Object?> get props =>  [message];
}

