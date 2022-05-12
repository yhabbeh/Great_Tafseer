import 'package:dartz/dartz.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/core/usecases/usecases.dart';
import '../entites/book_mark_list.dart';
import '../repositories/book_mark_list_repository.dart';

class RemoveRecordFromBookMarkList implements UseCase<void,NoParams>{
    final BookMArkListRepository repository;

    RemoveRecordFromBookMarkList({required this.repository});

  @override
  Future<Either<Failure, BookMarkList>>? call(noParams)async {
    return await repository.removeRecordOfList();

  }
}