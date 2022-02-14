// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakers_app/constanst.dart';

PreferredSize? customAppBarDe(ctx) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Nike",
        style: TextStyle(
          color: lightTextColor,
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
      ),
      leading: IconButton(
        onPressed: () {
           Navigator.pop(ctx);
        },
        icon: Icon(Icons.arrow_back,color: darkTextColor,),
      ),
      actions: [
        IconButton(
          onPressed: () {
           
          },
          icon: Icon(Icons.favorite_border),
        ),
      ],
    ),
  );
}
