import 'package:dartz/dartz.dart';
import 'package:mian/features/homePage/domain/entites/great_tafseer.dart';

import '../../../../core/error/failures.dart';

abstract class HomePageRepository{
  Future<Either<Failure,GreatTafseer>> getPageViewSwipe(int index );
}