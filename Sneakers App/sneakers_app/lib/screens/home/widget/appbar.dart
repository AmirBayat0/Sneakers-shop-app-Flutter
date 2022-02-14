// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sneakers_app/constanst.dart';

PreferredSize? customAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text(
          "Discover",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: darkTextColor,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.search,
              color: darkTextColor,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, right: 10),
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.bell,
              color: darkTextColor,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
