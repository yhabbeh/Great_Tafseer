import 'package:flutter/material.dart';
import '../../../../core/const/images.dart';
import '../../../../core/const/lists.dart';

class HomePageGreat extends StatefulWidget {
  const HomePageGreat({Key? key}) : super(key: key);

  @override
  State<HomePageGreat> createState() => _HomePageGreatState();
}

class _HomePageGreatState extends State<HomePageGreat>
    with SingleTickerProviderStateMixin {
  late PageController pageController;
  late TabController tabController;

  List<String> pageNumbers = ['321', '325', '367', '452'];

  String pageNumber = '451';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
    tabController = TabController(length: 2, vsync: this);
  }

  int checkPageJoza(int page) {
    if (page == 21) {
      return 1;
    } else if (page > 600) {
      return 30;
    } else {
      return ((page > 1 ? page - 1 : page) / 20).ceil();
    }
  }

  final controller = PageController(
    initialPage: 3,
  );

  changePage(index) {
    setState(() {
      pageNumber = pageNumbers[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width,
                height: height / 10,
                child: Stack(
                  children: [
                    Image(
                      width: width,
                      image: const AssetImage(bar),
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 10.0, left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            child: Container(width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[0]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),
                          InkWell(
                            child: Container(width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[1]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),
                          InkWell(
                            child: Container(width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[2]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),
                          InkWell(
                            child: Container(width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[3]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),
                          InkWell(
                            child: Container(width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[4]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),
                          InkWell(
                            child: Container(width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[5]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),
                          InkWell(
                            child: Container(width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[6]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),
                          InkWell(
                            child: Container( width: 30,height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[7]), fit: BoxFit.fitHeight)),
                            ),
                            onTap: (){},
                          ),






                          // for (int index = 0; index < 8; index++)
                          //   buildButton(
                          //       context: context,
                          //       width: width / 12,
                          //       height: height,
                          //       imagPath: imageList[index],
                          //       typeButton: typeButton[index],
                          //       alertDialog: appBarButton(
                          //           context: context,
                          //           typeAppBar: typeButton[index],
                          //           tabController: tabController)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            color: Colors.white,
            width: width,
            height: height - (height / 10),
            child: Stack(
              children: [
                Image(
                  image: const AssetImage(background),
                  height: height,
                  width: width,
                  fit: BoxFit.fill,
                ), //background
                Image(
                  image: const AssetImage(border),
                  width: width,
                  height: height,
                  fit: BoxFit.fill,
                ), //border
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width / 12, height / 15, width / 12, height / 15),
                  child: PageView.builder(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) => Image(
                      width: width - 80,
                      image:
                          AssetImage(pageIndex[indexx[index % indexx.length]]),
                      fit: BoxFit.fill,
                    ),
                    onPageChanged: (value) {
                      changePage(value);
                    },
                    itemCount: pageIndex.length,
                  ),
                ), //page
                Positioned(
                    left: width / 5.5,
                    child: Image(
                      height: height / 15,
                      width: width / 6,
                      image: const AssetImage(Sora037),
                    )),
                Positioned(
                    right: width / 5.5,
                    height: height / 15,
                    child: Image(
                      height: 50,
                      width: width / 6.5,
                      image: AssetImage(jozaName[checkPageJoza(321)]),
                    )),
                Container(
                  padding: EdgeInsets.only(top: height - (height / 5.7)),
                  alignment: Alignment.center,
                  child: Text(
                    pageNumber,
                    style: TextStyle(
                        fontSize: width * height * 0.00002 + 6,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
