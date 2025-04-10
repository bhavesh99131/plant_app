import 'package:flutter/material.dart';
import 'package:skygreen/screens/product_page.dart';
import 'package:skygreen/screens/widget/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> plantsCat = [
    "Top",
    "Outdoor",
    "Indoor",
    "Garden",
    "Vascular Plants",
    "Pteridophytes",
    "Indore",
  ];

  List<String> plantsImg = [
    "assets/images/p3.png",
    "assets/images/p4.png",
    "assets/images/p2.png",
    "assets/images/p4.png",
    "assets/images/p1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/hamburger.png",
                  height: 20,
                  width: 20,
                ),
                Image.asset("assets/images/trolley.png", height: 20, width: 20),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top plants",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset(
                            "assets/images/search.png",
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Search products",
                            style: TextStyle(
                              color: Colors.grey.withValues(alpha: 0.3),
                              fontSize: 16,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Image.asset(
                            "assets/images/mike.png",
                            height: 27,
                            width: 27,
                            color: Colors.grey.withValues(alpha: 0.7),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: plantsCat.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    plantsCat[index],
                                    style: TextStyle(
                                      color:
                                          index == 0
                                              ? Color(0xff129C52)
                                              : Colors.black.withValues(
                                                alpha: 0.5,
                                              ),
                                      fontWeight:
                                          index == 0
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                  ),
                                  if (index == 0)
                                    Text(
                                      '-',
                                      style: TextStyle(
                                        color: Color(0xff129C52),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              ),
                              SizedBox(width: 10),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: plantsImg.length,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      transitionDuration: Duration(
                                        milliseconds: 300,
                                      ),
                                      pageBuilder:
                                          (
                                            context,
                                            animation,
                                            secondaryAnimation,
                                          ) => Productpage(
                                            "caladium-hero-$index",
                                            plantsImg[index],
                                          ),
                                      transitionsBuilder: (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                        child,
                                      ) {
                                        return FadeTransition(
                                          opacity: animation,
                                          child: child,
                                        );
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  height: 190,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 120,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color: Color(0xff129C52),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Caladium",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "\$5",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      padding: EdgeInsets.all(
                                                        3,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              2,
                                                            ),
                                                        color: Colors.white,
                                                      ),
                                                      child: Image.asset(
                                                        "assets/images/trolley.png",
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Hero(
                                        tag: "caladium-hero-$index",
                                        child: Container(
                                          height: 130,
                                          width: 100,
                                          alignment: Alignment.bottomCenter,
                                          child: Image.asset(
                                            plantsImg[index],
                                            height: 150,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "New arrival",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: plantsImg.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 300),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        Productpage(
                                          "caladium-hero-animation-$index",
                                          plantsImg[index],
                                        ),
                                transitionsBuilder: (
                                  context,
                                  animation,
                                  secondaryAnimation,
                                  child,
                                ) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withValues(
                                              alpha: 0.2,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Hero(
                                            tag:
                                                "caladium-hero-animation-$index",
                                            child: Image.asset(
                                              plantsImg[index],
                                              height: 60,
                                              width: 60,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Caladium",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              "Lorem ipsum display",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.black.withValues(
                                                  alpha: 0.7,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Colors.black.withValues(
                                              alpha: 0.9,
                                            ),
                                          ),
                                        ),
                                        if (index == 0)
                                          Row(
                                            children: [
                                              PrettyButton(
                                                onTap: () {},
                                                innerPadding:
                                                    EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0,
                                                    ),
                                                backgroundColor: Color(
                                                  0xff129C52,
                                                ).withValues(alpha: 0.8),
                                                borderRadius: 13,
                                                bottomShadowColor: Color(
                                                  0xff129C52,
                                                ),
                                                spreadRadius: 0,
                                                blurRadius: 0,
                                                outerPadding: EdgeInsets.only(
                                                  right: 2,
                                                  left: 0,
                                                ),
                                                width: 20,
                                                height: 20,
                                                child: Icon(
                                                  Icons.remove,
                                                  size: 12,
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "5",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black
                                                      .withValues(alpha: 0.9),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              PrettyButton(
                                                onTap: () {},
                                                innerPadding:
                                                    EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0,
                                                    ),
                                                backgroundColor: Color(
                                                  0xff129C52,
                                                ).withValues(alpha: 0.8),
                                                borderRadius: 13,
                                                bottomShadowColor: Color(
                                                  0xff129C52,
                                                ),
                                                spreadRadius: 0,
                                                blurRadius: 0,
                                                outerPadding: EdgeInsets.only(
                                                  right: 2,
                                                  left: 0,
                                                ),
                                                width: 20,
                                                height: 20,
                                                child: Icon(
                                                  Icons.add,
                                                  size: 12,
                                                ),
                                              ),
                                            ],
                                          )
                                        else
                                          PrettyButton(
                                            onTap: () {},
                                            innerPadding: EdgeInsets.symmetric(
                                              horizontal: 2,
                                              vertical: 2,
                                            ),
                                            backgroundColor: Color(
                                              0xff129C52,
                                            ).withValues(alpha: 0.8),
                                            borderRadius: 13,
                                            bottomShadowColor: Color(
                                              0xff129C52,
                                            ),
                                            spreadRadius: 0,
                                            blurRadius: 0,
                                            outerPadding: EdgeInsets.only(
                                              right: 2,
                                              left: 0,
                                            ),
                                            width: 80,
                                            height: 30,
                                            child: Text(
                                              "Buy now",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
