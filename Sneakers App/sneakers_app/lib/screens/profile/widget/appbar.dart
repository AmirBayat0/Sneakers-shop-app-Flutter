// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakers_app/constanst.dart';

PreferredSize? customAppBarProfile() {
  return PreferredSize(
    preferredSize: Size.fromHeight(60),
    child: AppBar(
      leading: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Icon(
          Icons.arrow_back_ios,
          color: darkTextColor,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(
          top: 8.0,
        ),
        child: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: darkTextColor,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 8.0, right: 5),
          child: Icon(
            Icons.more_vert,
            color: darkTextColor,
          ),
        )
      ],
    ),
  );
}
