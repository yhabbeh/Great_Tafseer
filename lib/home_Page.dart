 import 'package:flutter/material.dart';
import 'package:mian/widget/appbar_button.dart';
import 'package:mian/widget/build_button_card.dart';

class HomePageGreat extends StatefulWidget {
  const HomePageGreat({Key? key}) : super(key: key);

  @override
  State<HomePageGreat> createState() => _HomePageGreatState();
}

class _HomePageGreatState extends State<HomePageGreat>
    with SingleTickerProviderStateMixin {
  late PageController pageController;
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
    tabController= TabController(length: 2, vsync: this);

  }

  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<String> imageList = [
      "assets/playEnd1x.png",
      "assets/play_all_icon.png",
      "assets/ayaList.png",
      "assets/settings_icon.png",
      "assets/list_icon.png",
      "assets/bookmark_list_icon.png",
      "assets/addBookMark_icon.png",
      "assets/search_icon.png"
    ];
    List<String> typeButton = [
      "playEnd",
      "play_all",
      "ayaList",
      "settings",
      "list",
      "bookmark_list",
      "addBookMark",
      "search"
    ];

    List<String> PageIndex = [
      "assets/p321@2x.png",
      "assets/p325@2x.png",
      "assets/p367@2x.png",
      "assets/p452@2x.png",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40,
        actions: [
          SizedBox(
              child: SizedBox(
            height: 40,
            child: Stack(
              children: [
                Image(
                  image: const AssetImage("assets/bar.png"),
                  width: width,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: width,
                  height: 40,
                  child: ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildButtonAppBar(
                          context: context,
                          width: width,
                          imagPath: imageList[index],
                          alertDialog:
                              appBarButton(typeAppBar: typeButton[index],tabController: tabController)
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 5),
                      itemCount: 8),
                )
              ],
            ),
          ))
        ],
      ),
      body: Container(
        color: Colors.white,
        width: width,
        height: height,
        child: Stack(
          children: [
            Image(
              image: const AssetImage("assets/background.png.jpg"),
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
            Image(
              image: AssetImage("assets/border.png"),
              width: width,
              fit: BoxFit.fill,
            ),
            Padding(
              padding:EdgeInsets.fromLTRB(35, 35, 35, 35),
              child: PageView.builder(
                scrollDirection: Axis.horizontal,

                itemBuilder: (BuildContext context, int index) => Container(
                  // margin: const EdgeInsets.fromLTRB(35, 35, 35, 35),
                  child: Image(
                    width: width - 80,
                    image: AssetImage(PageIndex[0]),
                    fit: BoxFit.fill,
                  ),
                ),
                itemCount: PageIndex.length,
              ),
            ), //page

            Positioned(
                left: width / 5.5,
                child: Image(
                  height: 40,
                  width: width / 6,
                  image: const AssetImage("assets/Sora037.png"),
                )),
            Positioned(
                right: width / 5.5,
                child: Image(
                  height: 50,
                  width: width / 6.5,
                  image: const AssetImage("assets/Joza023.png"),
                )),
            Positioned(
              bottom: 15,
              left: width / 2 - 10,
              child: const Text(
                "452",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ) ,

          ],
        ),
      ),
    );
  }
}
