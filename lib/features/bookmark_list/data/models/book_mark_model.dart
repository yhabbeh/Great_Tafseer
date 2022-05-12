import '../../domain/entites/book_mark_list.dart';

class BookMarkListModel extends BookMarkList{

  const BookMarkListModel({required int indexPage}) : super(indexPage: indexPage);


  factory BookMarkListModel.fromJson(Map<dynamic, dynamic> json) {
    return BookMarkListModel(
        indexPage: json['indexPage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'indexPage': indexPage,
    };
  }
}


