// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sneakers_app/utils/constants.dart';

import 'package:sneakers_app/view/bag/widget/body.dart';

class MyBagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        body: BodyBagView(),
      ),
    );
  }
}
