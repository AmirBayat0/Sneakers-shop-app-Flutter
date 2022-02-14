// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sneakers_app/models/model.dart';
import 'package:sneakers_app/screens/detail/widget/appbar.dart';
import 'package:sneakers_app/screens/detail/widget/body.dart';
import '../../constanst.dart';

class DetailScreen extends StatelessWidget {
  Models model;
  DetailScreen({required this.model});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
          extendBodyBehindAppBar: true,
          backgroundColor: backgroundColor,
          appBar: customAppBarDe(
            context,
          ),
          body: BodyDe(
            model: model,
          )),
    );
  }
}
