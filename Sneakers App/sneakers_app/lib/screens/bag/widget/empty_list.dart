// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sneakers_app/animation/fadeanimation.dart';


class EmptyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width: width,
        height: height / 1.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(delay: 0.5,
              child: Text(
                "No shoes added!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
