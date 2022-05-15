
import '../../domain/entites/great_tafseer.dart';

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

  factory GreatTafseerModel.fromJson(Map<dynamic, dynamic> json) {
    return GreatTafseerModel(
        nameOfSora: json["sora"],
        partOfSora: json["joza"],
        numberOfPage: json["pageIndex"],
        imageOfSora: json["page"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'sora': nameOfSora,
      'joza': partOfSora,
      'page': imageOfSora,
      'pageIndex': numberOfPage,
    };
  }
}
