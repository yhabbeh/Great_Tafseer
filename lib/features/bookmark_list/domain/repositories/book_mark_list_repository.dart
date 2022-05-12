

import 'package:dartz/dartz.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/features/bookmark_list/domain/entites/book_mark_list.dart';

abstract class BookMArkListRepository{
  Future<Either<Failure,BookMarkList>> getPageBookMarked(int indexPage);
  Future<Either<Failure,BookMarkList>> removeAllRecordsFromList();
  Future<Either<Failure,BookMarkList>> removeRecordOfList();
}