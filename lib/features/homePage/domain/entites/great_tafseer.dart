import 'package:equatable/equatable.dart';

class GreatTafseer extends Equatable {

  final String  nameOfSora;
  final String partOfSora ;
  final String numberOfPage ;
  final String imageOfSora ;

  const GreatTafseer({required this.nameOfSora, required this.partOfSora,required  this.numberOfPage,required this.imageOfSora});

  @override
  // TODO: implement props
  List<Object?> get props => [nameOfSora,partOfSora,numberOfPage,imageOfSora];

}