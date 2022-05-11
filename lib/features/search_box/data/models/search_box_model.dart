import 'package:mian/features/search_box/domain/entites/search_box.dart';

class SearchBoxModel extends SearchBox {
  const SearchBoxModel({
    required String nameOfSora,
    required String numberOfAya,
    required int repetition,
    required String aya,
    required int indexPage,
    required int numberOfResults,
  }) : super(
            nameOfSora: nameOfSora,
            numberOfAya: numberOfAya,
            repetition: repetition,
            aya: aya,
            indexPage: indexPage,
            numberOfResults: numberOfResults);

  factory SearchBoxModel.fromJson(Map<dynamic, dynamic> json) {
    return SearchBoxModel(
        nameOfSora: json['nameOfSora'],
        aya: json['aya'],
        numberOfAya: json['numberOfAya'],
        repetition: json['repetition'],
        numberOfResults: json['numberOfResults'],
        indexPage: json['indexPage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'nameOfSora': nameOfSora,
      'aya': aya,
      'numberOfAya': numberOfAya,
      'repetition': repetition,
      'numberOfResults': numberOfResults,
      'indexPage': indexPage,
    };
  }
}
