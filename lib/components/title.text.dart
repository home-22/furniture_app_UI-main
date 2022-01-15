import 'package:app_in/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class TitleText extends StatefulWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget bulid(BuildContext context) {
    double defauliSize = SizeConfig.defaultSize!;
    return Text(
      title,
      style: TextStyle(
        fontSize: defauliSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    return createState();
  }
}
