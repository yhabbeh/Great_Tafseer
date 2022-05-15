import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entites/great_tafseer.dart';

abstract class HomePageRepository{
  Future<Either<Failure,GreatTafseer>> getPageViewSwipe(int index );
}