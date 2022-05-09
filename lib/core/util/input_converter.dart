import 'package:dartz/dartz.dart';

import '../error/failures.dart';

class InputConverter {
  Either<Failure, int> StringToUnsignedInteger(String str) {
    final integer = int.parse(str);
    try {
      if (integer < 0) throw left(InvalidInputFailure());
      return Right(integer);
    } on FormatException {
      return left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
