

import 'package:dartz/dartz.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/core/usecases/usecases.dart';
import 'package:mian/features/homePage/domain/entites/great_tafseer.dart'; 
import '../repositories/great_tafseer_repository.dart';

class SwipePageView implements UseCase<GreatTafseer,Params>{
  final HomePageRepository repository;

  SwipePageView(this.repository);

  @override
  Future<Either<Failure, GreatTafseer>>? call(params) {
    // TODO: implement call
    throw UnimplementedError();
  }
 
}

