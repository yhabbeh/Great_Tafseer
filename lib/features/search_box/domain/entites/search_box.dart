

import 'package:equatable/equatable.dart';

class SearchBox extends Equatable {
  final int indexPage;

  const SearchBox({required this.indexPage});

  @override
  List<Object?> get props => [indexPage];
}