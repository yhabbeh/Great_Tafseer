import 'package:flutter/material.dart';

import '../../../../core/const/images.dart';
import '../../../../core/const/lists.dart';

class HomePageGreat extends StatefulWidget {
  const HomePageGreat({Key? key}) : super(key: key);

  @override
  State<HomePageGreat> createState() => _HomePageGreatState();
}

class _HomePageGreatState extends State<HomePageGreat>
    with TickerProviderStateMixin {
  late PageController pageController;
  late TabController tabController ;

  List<String> pageNumbers = ['321', '325', '367', '452'];

  String pageNumber = '451';
  int tabNumberIndx = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
    tabController = TabController(length: 4, vsync: this);


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
List tabNumber =[1,2,3,4];

  changeTab(index) {
    setState(() {
      tabNumberIndx = tabNumber[index];
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
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[0]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[1]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[2]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[3]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[4]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[5]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[6]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Container(
                              width: 30,
                              height: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imageList[7]),
                                      fit: BoxFit.fitHeight)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    width: 50,
                                    height: 400,
                                    child: AlertDialog(
                                      title: const Text(
                                        "تنبيه!",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      actionsAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      content: SizedBox(
                                          width: width / 2,
                                          height: height / 2,
                                          child: Column(
                                            children: [
                                              TextField(
                                                onTap: () {},
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                              TabBar(
                                                controller: tabController,
                                                  onTap: (value){

                                                    changeTab(value);

                                                  },

                                                  tabs:  [
                                                Tab(

                                                    child: Text(tabNumberIndx.toString(),style:TextStyle(color: Colors.black,fontSize: 12,),)),
                                                Tab(child: Text("test2",style:TextStyle(color: Colors.black,fontSize: 12,),)),
                                                Tab(child: Text("test3")),
                                                Tab(child: Text("test4") ,
                                                ),
                                              ])
                                            ],
                                          )),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("نعم")),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("لا")),
                                      ],
                                    ),
                                  );
                                },/////
                              );
                            },
                          )
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
                    width / 12,
                    height / 15,
                    width / 12,
                    height / 15,
                  ),
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
                      image: const AssetImage(SORA37),
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
