import 'package:dartz/dartz.dart';

import 'package:mian/core/error/failures.dart';

import 'package:mian/features/homePage/domain/entites/great_tafseer.dart';

import '../../domain/repositories/great_tafseer_repository.dart';

class HomePageRepositoryImpl implements HomePageRepository {

  @override
  Future<Either<Failure, GreatTafseer>> pageViewSwipe(int index) {
    // TODO: implement pageViewSwipe
    throw UnimplementedError();
  }

}
