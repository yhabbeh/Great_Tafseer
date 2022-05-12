import 'package:dartz/dartz.dart';

import 'package:mian/core/error/failures.dart';

import 'package:mian/features/bookmark_list/domain/entites/book_mark_list.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/repositories/book_mark_list_repository.dart';
import '../data_source/book_mark_local_data_source.dart';

class BookMArkListRepositoryImpl extends BookMArkListRepository {
  final BookMarkListLocalDataSource bookMarkListLocalDataSource;

  BookMArkListRepositoryImpl({
    required this.bookMarkListLocalDataSource,
  });

  @override
  Future<Either<Failure, BookMarkList>> getPageBookMarked(int indexPage) async {
    try {
      final localData =
          await bookMarkListLocalDataSource.getDataFromIndex(indexPage);
      return Right(localData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure,BookMarkList>> removeAllRecordsFromList() async {
    try {
      final localData =
          await bookMarkListLocalDataSource.getRemoveDataFromIndex();
      return Right(localData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, BookMarkList>> removeRecordOfList() async {
    try {
      final localData =
          await bookMarkListLocalDataSource.getRemoveDataFromIndex();
      return Right(localData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
