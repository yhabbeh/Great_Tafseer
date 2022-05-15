
import '../models/search_box_model.dart';
abstract class SearchBoxLocalDataSource {
  Future<List<SearchBoxModel>> getDataFromIndex(String text);
}



class SearchBoxLocalDataSourceImpl implements SearchBoxLocalDataSource {
  @override
  Future<List<SearchBoxModel>> getDataFromIndex(String text) {

    // TODO: implement getDataFromIndex
    throw [];
  }


}

