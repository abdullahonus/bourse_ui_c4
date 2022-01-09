// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:animations/animations.dart';
import 'package:bourse_ui_c4/screens/Detay%20Inkwell/detay_genel_bakis.dart';
import 'package:flutter/material.dart';

class GenelBakis extends StatefulWidget {
  GenelBakis({Key? key}) : super(key: key);

  @override
  _GenelBakisState createState() => _GenelBakisState();
}

class _GenelBakisState extends State<GenelBakis> {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeheigh = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[850],
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            width: sizeWidth * 1,
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Accounts",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "\$425.564,5",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: sizeWidth * 1,
            height: sizeheigh * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(8)),
            child: ListView(
              children: [
                OpenContainer(
                    openElevation: 0,
                    closedElevation: 0,
                    closedColor: Colors.transparent,
                    transitionType: ContainerTransitionType.fadeThrough,
                    openBuilder: (BuildContext context, VoidCallback _) {
                      return SizedBox(
                          height: 240,
                          width: MediaQuery.of(context).size.width,
                          child: const TabPage());
                    },
                    closedBuilder:
                        (BuildContext context, VoidCallback openContainer) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(9),
                            width: sizeWidth * 0.012,
                            height: sizeheigh * 0.06,
                            color: Colors.green[900],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Deposit",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              Text(
                                "**** **** 8544",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            ],
                          ),
                          Text(
                            "\$2.215,13",
                            style: TextStyle(
                                fontSize: 25, color: Colors.grey.shade300),
                          ),
                          (const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ))
                        ],
                      );
                    }),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(9),
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.06,
                      color: Colors.green[500],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "For Home",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "**** **** 5678",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "\$8.571,49",
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade300),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(9),
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.06,
                      color: Colors.greenAccent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "For Buying Car",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "**** **** 4747",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "\$1.001,29",
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade300),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.15),
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: sizeheigh * 0.05,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.05)),
              child: const Center(
                child: Text(
                  "Show All",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              )),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            height: sizeheigh * 0.15,
            width: sizeWidth * 1,
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Budgets",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "\$480,15",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(9),
                width: sizeWidth * 0.012,
                height: sizeheigh * 0.06,
                color: Colors.orange[300],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "RedPay Credit",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    "**** **** 0404",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                "\$45,13",
                style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(9),
                width: sizeWidth * 0.012,
                height: sizeheigh * 0.06,
                color: Colors.orange[900],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Rent ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    "**** **** 3131",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                "\$1.20,0",
                style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(9),
                width: sizeWidth * 0.012,
                height: sizeheigh * 0.06,
                color: Colors.orange[100],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "TabFine Credit",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    "**** **** 1215",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                "\$45,13",
                style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: sizeheigh * 0.05,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.05)),
              child: const Center(
                child: Text(
                  "Show All",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              )),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            height: sizeheigh * 0.15,
            width: sizeWidth * 1,
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Bills",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "\$1.374,69",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(9),
                    width: sizeWidth * 0.012,
                    height: sizeheigh * 0.06,
                    color: Colors.black,
                  ),
                  Positioned(
                    top: 35,
                    left: 9,
                    child: Container(
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.02,
                      color: Colors.cyanAccent.shade200,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "RedPay Credit",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    "\$45,9 / \$70,0",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                "\$24,51",
                style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
              ),
              Text(
                "LEFT",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade300),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(9),
                    width: sizeWidth * 0.012,
                    height: sizeheigh * 0.06,
                    color: Colors.black,
                  ),
                  Positioned(
                    top: 24,
                    left: 9,
                    child: Container(
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.04,
                      color: Colors.red.shade800,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Grocery  ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    "\$71,9 / \$150,0",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                "\$120,0",
                style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
              ),
              Text(
                "LEFT",
                style: TextStyle(fontSize: 14, color: Colors.grey.shade300),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(9),
                    width: sizeWidth * 0.012,
                    height: sizeheigh * 0.06,
                    color: Colors.black,
                  ),
                  Positioned(
                    top: 43,
                    left: 9,
                    child: Container(
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.01,
                      color: Colors.purple.shade900,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "TabFine Credit",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    "**** **** 1215",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                "\$45,13",
                style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
