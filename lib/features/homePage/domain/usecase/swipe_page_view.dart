

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mian/core/error/failures.dart';
import 'package:mian/core/usecases/usecases.dart';
import 'package:mian/features/homePage/domain/entites/great_tafseer.dart'; 
import '../repositories/great_tafseer_repository.dart';

class SwipePageView implements UseCase<GreatTafseer,Params>{
  final HomePageRepository repository;
  SwipePageView(this.repository);

  @override
  Future<Either<Failure, GreatTafseer>>? call(params) async{
    return await repository.getPageViewSwipe(params.index);

  }
 
}

class Params extends Equatable {
  final int index;
  const Params({required this.index});

  @override
  List<Object?> get props => [index];

}
