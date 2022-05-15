
import '../models/book_mark_model.dart';

abstract class BookMarkListLocalDataSource {
  Future<BookMarkListModel> getDataFromIndex(int indexPage);
  Future<BookMarkListModel> getRemoveDataFromIndex();
}

class BookMarkListLocalDataSourceImpl implements BookMarkListLocalDataSource {
  @override
  Future<BookMarkListModel> getDataFromIndex(int indexPage) {

    throw [];
  }

  @override
  Future<BookMarkListModel> getRemoveDataFromIndex() {
    throw [];
  }


}

