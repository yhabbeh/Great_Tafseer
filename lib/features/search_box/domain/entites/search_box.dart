import 'package:equatable/equatable.dart';

class SearchBox extends Equatable {
  final int indexPage;
  final String nameOfSora;
  final String numberOfAya;
  final String aya;
  final int repetition;
  final int numberOfResults;

  const SearchBox({
    required this.nameOfSora,
    required this.numberOfAya,
    required this.repetition,
    required this.aya,
    required this.indexPage,
    required this.numberOfResults,
  });

  @override
  List<Object?> get props => [numberOfResults,numberOfAya,nameOfSora,aya,indexPage,repetition];
}
