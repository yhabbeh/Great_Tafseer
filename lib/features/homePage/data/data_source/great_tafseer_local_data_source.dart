

import '../../../../core/const/lists.dart';
import '../../../../core/error/exceptions.dart';
import '../models/home_page_model.dart';

abstract class GreatTafseerLocalDataSource {
  Future<GreatTafseerModel> getDataFromIndex(int index);
}

class GreatTafseerLocalDataSourceImpl implements GreatTafseerLocalDataSource {
  @override
  Future<GreatTafseerModel> getDataFromIndex(int index) {
    try {
      final data = informationOfPages;
      return Future.value(GreatTafseerModel.fromJson(data[index]));
    } catch (e) {
      throw CacheException();
    }
  }


  }

