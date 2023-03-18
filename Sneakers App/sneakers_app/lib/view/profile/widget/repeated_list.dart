// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sneakers_app/theme/custom_app_theme.dart';
import '../../../utils/constants.dart';

class RoundedLisTile extends StatelessWidget {
  double width;
  double height;
  Color? leadingBackColor;
  IconData icon;
  String title;
  Widget trailing;

  RoundedLisTile({
    required this.width,
    required this.height,
    required this.leadingBackColor,
    required this.icon,
    required this.title,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Container(
          width: width,
          height: height / 14,
          child: ListTile(
              leading: CircleAvatar(
                backgroundColor: leadingBackColor,
                radius: 25,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    icon,
                    color: AppConstantsColor.lightTextColor,
                  ),
                ),
              ),
              title: Text(title, style: AppThemes.profileRepeatedListTileTitle),
              trailing: trailing),
        ),
      ),
    );
  }
}
