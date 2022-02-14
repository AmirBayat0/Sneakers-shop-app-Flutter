// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Models {
  String name;
  String model;
  double price;
  String imgAddress;
  Color modelColor;
  Models({
    required this.name,
    required this.model,
    required this.price,
    required this.imgAddress,
    required this.modelColor,
  });
}

final List<Models> snkModels = [
  Models(
    name: "NIKE",
    model: "AIR-MAX",
    price: 130.00,
    imgAddress: "assets/images/nike1.png",
    modelColor: Color(0xffDE0106),
  ),
  Models(
    name: "NIKE",
    model: "AIR-JORDAN MID",
    price: 190.00,
    imgAddress: "assets/images/nike8.png",
    modelColor: Color(0xff3F7943),
  ),
  Models(
    name: "NIKE",
    model: "ZOOM",
    price: 160.00,
    imgAddress: "assets/images/nike2.png",
    modelColor: Color(0xffE66863),
  ),
  Models(
    name: "NIKE",
    model: "Air-FORCE",
    price: 110.00,
    imgAddress: "assets/images/nike3.png",
    modelColor: Color(0xffD7D8DC),
  ),
  Models(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike5.png",
    modelColor: Color(0xff37376B),
  ),
  Models(
    name: "NIKE",
    model: "ZOOM",
    price: 115.00,
    imgAddress: "assets/images/nike4.png",
    modelColor: Color(0xffE4E3E8),
  ),
  Models(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike7.png",
    modelColor: Color(0xffD68043),
  ),
  Models(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike6.png",
    modelColor: Color(0xffE2E3E5),
  ),
];

void addToBag() {}

/////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////* MY BAG SCREEN MODELS *///////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////

class BagModels {
  String model;
  double price;
  String imgAddress;
  int numOfShoe = 0;
  BagModels({
    required this.model,
    required this.price,
    required this.imgAddress,
    required this.numOfShoe,
  });
}

List<BagModels> bagModels = [];

/////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////* Profile Status *///////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
class MyStatus {
  String emoji;
  String txt;
  Color selectColor;
  Color unSelectColor;

  MyStatus({
    required this.emoji,
    required this.txt,
    required this.selectColor,
    required this.unSelectColor,
  });
}

List<MyStatus> statusList = [
  MyStatus(
    emoji: '😴',
    txt: "Away",
    selectColor: Color(0xff121212),
    unSelectColor: Color(0xffbfbfbf),
  ),
   MyStatus(
    emoji: '💻',
    txt: "At Work",
    selectColor: Color(0xff05a35c),
    unSelectColor: Color(0xffCEEBD9),
  ),
  MyStatus(
    emoji: '🎮',
    txt: "Gaming",
    selectColor: Color(0xffFFD237),
    unSelectColor: Color(0xffFDDFBB),
  ),
  MyStatus(
    emoji: '🤫',
    txt: "Busy",
    selectColor: Color(0xffba3a3a),
    unSelectColor: Color(0xffdb9797),
  ),
];
