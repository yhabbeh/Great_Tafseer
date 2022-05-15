

import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entites/book_mark_list.dart';

abstract class BookMArkListRepository{
  Future<Either<Failure,BookMarkList>> getPageBookMarked(int indexPage);
  Future<Either<Failure,BookMarkList>> removeAllRecordsFromList();
  Future<Either<Failure,BookMarkList>> removeRecordOfList();
}