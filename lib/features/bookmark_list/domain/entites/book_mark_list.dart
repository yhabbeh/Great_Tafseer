
import 'package:equatable/equatable.dart';

class BookMarkList extends Equatable{
  final int indexPage;

  const BookMarkList({required this.indexPage});

  @override
  List<Object?> get props => [indexPage];

}