import 'package:flutter/material.dart';

import '../../../../core/const/images.dart';

Widget buildButton({
  required BuildContext context,
  required double width,
  required double height,
  required String imagPath,
  required AlertDialog alertDialog,
  required typeButton,
}) {
  return InkWell(
    onTap: () {
      (typeButton != "addBookMark") ?
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
                width: 50,
                height: 400,
                child: alertDialog
            );
          })
            ://still need checking exception
              const Positioned(
                top: 50,
                left: 30,
                child: Image(image: AssetImage(bookMark),width: 100,height: 50,));



    },
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imagPath), fit: BoxFit.fitHeight)),
    ),
  );
}
