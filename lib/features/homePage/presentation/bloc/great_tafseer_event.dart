part of 'great_tafseer_bloc.dart';

abstract class GreatTafseerEvent extends Equatable {}

class GetSwipePageView extends GreatTafseerEvent{
  final int indexPage;
  GetSwipePageView(this.indexPage);

  @override
  List<Object?> get props => [indexPage];
}
