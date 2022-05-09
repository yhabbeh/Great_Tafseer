part of 'great_tafseer_bloc.dart';

abstract class GreatTafseerState extends Equatable {
  const GreatTafseerState();
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class ViewPageInitial extends GreatTafseerState {}

class ViewPageStateLoading extends GreatTafseerState {}

class ViewPageStateLoaded extends GreatTafseerState {
  final
  GreatTafseer trt;

  const ViewPageStateLoaded(this.trt);

  @override
  // TODO: implement props
  List<Object?> get props => [trt];
}
class ViewPageStateError extends GreatTafseerState {
  final String message;

  const ViewPageStateError(this.message);
  @override
  // TODO: implement props
  List<Object?> get props =>  [message];
}

