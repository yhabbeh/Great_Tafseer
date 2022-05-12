
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entites/search_box.dart';

abstract class SearchBoxRepository{
  Future<Either<Failure,List<SearchBox>>> getResultOfSearch(String text);


}