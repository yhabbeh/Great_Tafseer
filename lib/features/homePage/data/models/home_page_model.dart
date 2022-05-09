 import 'package:mian/features/homePage/domain/entites/great_tafseer.dart';

class GreatTafseerModel extends GreatTafseer {
  const GreatTafseerModel(
      {required String nameOfSora,
        required String partOfSora,
        required String numberOfPage,
        required String imageOfSora})
      : super(
      nameOfSora: nameOfSora,
      partOfSora: partOfSora,
      numberOfPage: numberOfPage,
      imageOfSora: imageOfSora);

  factory GreatTafseerModel.fromJson(Map<String, dynamic> json) {
    return GreatTafseerModel(
        nameOfSora: json["nameOfSora"],
        partOfSora: json["partOfSora"],
        numberOfPage: json["numberOfPage"],
        imageOfSora: json["imageOfSora"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'nameOfSora': nameOfSora,
      'partOfSora': partOfSora,
      'numberOfPage': numberOfPage,
      'imageOfSora': imageOfSora
    };
  }
}
