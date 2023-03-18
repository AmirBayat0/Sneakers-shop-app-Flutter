// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sneakers_app/theme/custom_app_theme.dart';

import '../../../utils/constants.dart';

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
          style: AppThemes.homeAppBar
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: IconButton(
            icon: FaIcon(
              CupertinoIcons.search,
              color: AppConstantsColor.darkTextColor,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
         
        Padding(
          padding: EdgeInsets.only(top: 8.0, right: 4),
          child: IconButton(
            icon: FaIcon(
               CupertinoIcons.bell,
              color: AppConstantsColor.darkTextColor,
              size: 25,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
