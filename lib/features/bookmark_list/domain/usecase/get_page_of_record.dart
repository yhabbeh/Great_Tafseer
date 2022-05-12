import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/core/usecases/usecases.dart';
import 'package:mian/features/bookmark_list/domain/entites/book_mark_list.dart';
import 'package:mian/features/bookmark_list/domain/repositories/book_mark_list_repository.dart';

class GetPageOfRecord implements UseCase<BookMarkList,Params> {
  final BookMArkListRepository repository;

  GetPageOfRecord({required this.repository});

  @override
  Future<Either<Failure, BookMarkList>>? call(Params params) async {
    return await repository.getPageBookMarked(params.indexPage);

  }

}
class Params extends Equatable {
  final int indexPage;
  const Params({required this.indexPage});

  @override
  List<Object?> get props => [indexPage];

}