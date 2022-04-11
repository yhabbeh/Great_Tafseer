import 'package:flutter/material.dart';

Widget buildButtonAppBar(
    {required BuildContext context,
    required double width,
    required String imagPath,
    required AlertDialog alertDialog}) {
  return InkWell(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Container(width:50,height: 400,child: alertDialog);
          }
          );
    },
    child: Container(
      width:50,
      height: 30,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(imagPath))),
    ),
  );
}
