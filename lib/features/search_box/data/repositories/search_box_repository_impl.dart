import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entites/search_box.dart';
import '../../domain/repositories/search_box_repository.dart';
import '../data_source/search_box_local_data_source.dart';

class SearchBoxRepositoryImpl implements SearchBoxRepository
{
  final SearchBoxLocalDataSource  searchBoxLocalDataSource;

  SearchBoxRepositoryImpl({required this.searchBoxLocalDataSource});
  @override
  Future<Either<Failure, List<SearchBox>>> getResultOfSearch(String text) async {
    try {
      final localData = await searchBoxLocalDataSource.getDataFromIndex(text);
      return Right(localData);
    }
    on CacheException {
      return Left(CacheFailure());
    }
  }
}