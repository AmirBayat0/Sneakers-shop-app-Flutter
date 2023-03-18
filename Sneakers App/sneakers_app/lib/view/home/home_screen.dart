import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'components/body.dart';
import 'components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        appBar: customAppBar(),
        body: const Body(),
      ),
    );
  }
}
