import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/core/usecases/usecases.dart';
import '../entites/book_mark_list.dart';
import '../repositories/book_mark_list_repository.dart';

class RemoveAllRecordsFromBookMarkList implements UseCase<void,NoParams>{
    final BookMArkListRepository repository;

    RemoveAllRecordsFromBookMarkList({required this.repository});

  @override
  Future<Either<Failure, void>> call(noParams) async {
   return await repository.removeAllRecordsFromList();
  }
}