import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/core/usecases/usecases.dart';
import '../entites/search_box.dart';
import '../repositories/search_box_repository.dart';

class SearchBar implements UseCase<List<SearchBox>,Params>{
  final SearchBoxRepository repository ;
  SearchBar({required this.repository});

  @override
  Future<Either<Failure, List<SearchBox>>>? call(Params params) async {
      return await repository.getResultOfSearch(params.text);
  }
}

class Params extends Equatable {
  final String text;
  const Params({required this.text});

  @override
  List<Object?> get props => [text];

}
