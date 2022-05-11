import 'package:dartz/dartz.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/features/search_box/domain/entites/search_box.dart';
import '../../../../core/error/exceptions.dart';
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