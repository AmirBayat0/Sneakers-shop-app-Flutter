// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakers_app/theme/custom_app_theme.dart';

import '../../../utils/constants.dart';

PreferredSize? customAppBarProfile() {
  return PreferredSize(
    preferredSize: Size.fromHeight(60),
    child: AppBar(
     
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(
          top: 8.0,
        ),
        child: Text(
          "My Profile",
          style: AppThemes.profileAppBarTitle,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(top: 8.0, right: 5),
          child: Icon(
            Icons.more_vert,
            color: AppConstantsColor.darkTextColor,
          ),
        )
      ],
    ),
  );
}
