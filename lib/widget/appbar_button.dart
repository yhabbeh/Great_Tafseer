import 'package:flutter/material.dart';

AlertDialog appBarButton({required String typeAppBar,required TabController tabController}) {
  String? _sora = "num37";

  Map s = {
    "playEnd": AlertDialog(
      title: const Text(
        "تنبيه!",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      content: const Text(
        "لم يتم تنزيل السور المراد الاستماع إلى آياتها\n هل تريد تنزيل السور؟",
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(onPressed: () {}, child: const Text("نعم")),
        TextButton(onPressed: () {}, child: const Text("لا")),
      ],
    ),
    "play_all": AlertDialog(
      title: Column(
        children: const [
          Text(
            "استماع",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "الرجاء اختيار المادة المراد الاستماع لتلاوتها",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      content: Container(
        height: 300,
        width: 200,
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                    value: "num37",
                    groupValue: _sora,
                    onChanged: (value) {
                      setState(() {
                        _sora = value! as String?;
                      });
                    }),
                const Text(
                  "ص",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                    value: "الصافات",
                    groupValue: _sora,
                    onChanged: (value) {
                      setState(() {
                        _sora = value! as String?;
                      });
                    }),
                const Text(
                  "الصافات",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                    value: "fullPage",
                    groupValue: _sora,
                    onChanged: (value) {
                      setState(() {
                        _sora = value! as String?;
                      });
                    }),
                const Text(
                  "استماع للصفحة كاملة",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                    value: "hizb",
                    groupValue: _sora,
                    onChanged: (value) {
                      setState(() {
                        _sora = value! as String?;
                      });
                    }),
                const Text(
                  "استماع للحزب",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                    value: "joza",
                    groupValue: _sora,
                    onChanged: (value) {
                      setState(() {
                        _sora = value! as String?;
                      });
                    }),
                const Text(
                  "استماع للجزء",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 20),
              const CheckboxListTile(
                title: Text("تكرار الاستماع",style: TextStyle(color: Colors.black)) ,value: true, onChanged: null),
              const CheckboxListTile(
                title: Text("الاستماع من الصفحة الحالية",style: TextStyle(color: Colors.black),), value: false, onChanged: null),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(onPressed: () {}, child: const Text("نعم")),
        TextButton(onPressed: () {}, child: const Text("لا")),
      ],
    ),
    "ayaList":  AlertDialog(
      content:Container(
        height: 300,width: 300,
        child: Column(
          children: [
            TabBar(
              tabs: const [
                Tab(
                  child: Text("قوائم الآيات",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),),
                Tab(
                  child: Text("قوائم البحث",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),),
              ],
              controller: tabController,
            ),
          ],
        ),
      )
    ),
    "settings": AlertDialog(
      title: const Text(
        "تنبيه!",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(onPressed: () {}, child: const Text("نعم")),
        TextButton(onPressed: () {}, child: const Text("لا")),
      ],
    ),
    "list": AlertDialog(
      title: const Text(
        "تنبيه!",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),

      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(onPressed: () {}, child: const Text("نعم")),
        TextButton(onPressed: () {}, child: const Text("لا")),
      ],
    ),
    "bookmark_list": AlertDialog(
      title: const Text(
        "تنبيه!",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),

      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(onPressed: () {}, child: const Text("نعم")),
        TextButton(onPressed: () {}, child: const Text("لا")),
      ],
    ),
    "addBookMark": AlertDialog(
      title: const Text(
        "تنبيه!",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),

      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(onPressed: () {}, child: const Text("نعم")),
        TextButton(onPressed: () {}, child: const Text("لا")),
      ],
    ),
    "search": AlertDialog(
      title: const Text(
        "تنبيه!",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),

      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        TextButton(onPressed: () {}, child: const Text("نعم")),
        TextButton(onPressed: () {}, child: const Text("لا")),
      ],
    )
  };

  return s[typeAppBar];
}

class _ssora {}

void setState(Null Function() param0) {}
