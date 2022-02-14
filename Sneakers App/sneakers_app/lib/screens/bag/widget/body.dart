// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sneakers_app/animation/fadeanimation.dart';
import 'package:sneakers_app/constanst.dart';
import 'package:sneakers_app/models/model.dart';
import 'package:sneakers_app/screens/bag/widget/empty_list.dart';

class BodyBag extends StatefulWidget {
  @override
  _BodyBagState createState() => _BodyBagState();
}

class _BodyBagState extends State<BodyBag> with SingleTickerProviderStateMixin {
  double bagPriceSum() {
    double sumPrice = 0;
    for (BagModels bagModel in bagModels) {
      sumPrice = sumPrice + bagModel.price;
    }
    return sumPrice;
  }

  int numOfItems = bagModels.length;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        width: width,
        height: height / 1.14,
        // color: Colors.red,
        child: Column(
          children: [
            topText(width, height),
            Divider(
              color: Colors.grey,
            ),
            bagModels.isEmpty
                ? EmptyList()
                : Column(children: [
                    mainListView(width, height),
                    SizedBox(
                      height: 12,
                    ),
                    bottominfo(width, height),
                  ])
          ],
        ),
      ),
    );
  }

  // Top Texts Components
  topText(width, height) {
    return Container(
      width: width,
      height: height / 14,
      child: FadeAnimation(
        delay: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My Bag",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            Text(
              "Total ${numOfItems} Items",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Material Button Components
  materialButton(width, height) {
    return FadeAnimation(
      delay: 3,
      child: MaterialButton(
        minWidth: width / 1.2,
        height: height / 15,
        color: materialButtonColor,
        onPressed: () {},
        child: Text(
          "NEXT",
          style: TextStyle(color: lightTextColor),
        ),
      ),
    );
  }

  // Mian Listview Components
  mainListView(width, height) {
    return Container(
      width: width,
      height: height / 1.6,
      // color: Colors.yellow,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: bagModels.length,
          itemBuilder: (ctx, index) {
            BagModels bgmodel = bagModels[index];

            return FadeAnimation(
              delay: 1.5 * index / 4,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: width,
                height: height / 5.2,
                // color: Colors.blue,
                child: Row(
                  children: [
                    Container(
                      // color: Colors.green,
                      width: width / 2.8,
                      height: height / 5.7,
                      child: Stack(children: [
                        Positioned(
                          top: 20,
                          left: 10,
                          child: Container(
                            width: width / 3.6,
                            height: height / 7.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        Positioned(
                            left: 13,
                            bottom: 15,
                            child: RotationTransition(
                              turns: AlwaysStoppedAnimation(-40 / 360),
                              child: Container(
                                width: 130,
                                height: 130,
                                child: Image(
                                  image: AssetImage(
                                    bgmodel.imgAddress,
                                  ),
                                ),
                              ),
                            ))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bgmodel.model,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: darkTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "\$${bgmodel.price}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: darkTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    bgmodel.numOfShoe--;
                                    bagModels.remove(bgmodel);
                                    numOfItems = bagModels.length;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[300],
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.remove,
                                    size: 15,
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                bgmodel.numOfShoe.toString(),
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[300],
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    size: 15,
                                  )),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  bottominfo(width, height) {
    return Container(
      width: width,
      height: height / 7,
      // color: Colors.blue,
      child: Column(
        children: [
          FadeAnimation(
            delay: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TOTAL",
                  style: TextStyle(
                      color: darkTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  "\$${bagPriceSum()}",
                  style: TextStyle(
                      color: darkTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          materialButton(width, height)
        ],
      ),
    );
  }
}
