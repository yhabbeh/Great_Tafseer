import 'package:dartz/dartz.dart';


import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entites/great_tafseer.dart';
import '../../domain/repositories/great_tafseer_repository.dart';
import '../data_source/great_tafseer_local_data_source.dart';
import '../data_source/great_tafseer_remote_data_source.dart';

class HomePageRepositoryImpl implements HomePageRepository {
  final GreatTafseerLocalDataSource tafseerLocalDataSource;
  final GreatTafseerRemoteDataSource tafseerRemoteDataSource;

  HomePageRepositoryImpl({required this.tafseerLocalDataSource, required this.tafseerRemoteDataSource});

  @override
  Future<Either<Failure, GreatTafseer>> getPageViewSwipe(int index) async{
    try {
      final locaData = await tafseerLocalDataSource.getDataFromIndex(index);
      return Right(locaData);
    }
      on CacheException {
        return Left(CacheFailure());
      }
  }
}