


import '../models/home_page_model.dart';

abstract class GreatTafseerRemoteDataSource {
  Future<GreatTafseerModel> getPageViewSwipe();

}

class GreatTafseerRemoteDataSourceImpl implements GreatTafseerRemoteDataSource {
  @override
  Future<GreatTafseerModel> getPageViewSwipe() {
    // TODO: implement getPageViewSwipe
    throw UnimplementedError();
  }


  }


