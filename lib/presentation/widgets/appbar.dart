import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/core/const.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({Key? key, required this.title}) : super(key: key);
  Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          kwidth,
          title,
          const Spacer(),
          const Icon(
            Icons.cast,
            color: Colors.white,
            size: 30,
          ),
          kwidth,
          Container(
            color: Colors.blue,
            width: 28,
            height: 28,
          ),
          kwidth
        ],
      ),
    );
  }
}
