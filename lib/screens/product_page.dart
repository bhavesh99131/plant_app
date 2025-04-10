import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productpage extends StatefulWidget {
  String tagName;
  String imgUrl;
  Productpage(this.tagName, this.imgUrl, {super.key});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _animation = Tween<double>(
      begin: 1.0,
      end: 0.5,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    toggleSheet();
  }

  void toggleSheet() {
    if (isOpen) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    isOpen = !isOpen;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff129C52).withValues(alpha: 0.6),
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Positioned(
                  left: 0,
                  right: 0,
                  top: (height / 1.35) * _animation.value,
                  child: Container(
                    height: height * 0.7,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 10),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height / 16),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Caladium",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Color(0xff129C52),
                                    ),
                                  ],
                                ),
                                Text(
                                  "\$5",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff129C52),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Description",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Caladium is a genus of flowering plants in the family Araceae. They are often known by the common name elephant ear, heart of Jesus, and angel wings. There are over 1000 named cultivars of Caladium bicolor from the original South American plant,Caladiums are known for their big, heart-shaped leaves that display amazing color combinations of white, pink, red and green. These are tropical plants that thrive in hot, humid weather. Caladiums rarely flower.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black.withValues(alpha: 0.6),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 40,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (
                                      BuildContext context,
                                      int index,
                                    ) {
                                      return Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff129C52),
                                            ),
                                            child: Icon(
                                              Icons.device_thermostat_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                index == 0
                                                    ? "Humidity"
                                                    : "Temperature",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withValues(alpha: 0.8),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                "7.2",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withValues(alpha: 0.7),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12,
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
                                SizedBox(height: 20),
                                Container(
                                  width: width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xff129C52),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/trolley.png",
                                        color: Colors.white,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(
              height: height / 2.3,
              width: width,
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/images/trolley.png",
                          color: Colors.white,
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width / 2,
                        height: height / 3,
                        padding: EdgeInsets.only(left: 10),
                        alignment: Alignment.bottomLeft,
                        child: Hero(
                          tag: widget.tagName,
                          child: Image.asset(widget.imgUrl),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 50),
                        child: Padding(
                          padding: EdgeInsets.only(right: 70),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Indoor",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Size",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Medium",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Diffcuality",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Easy",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
