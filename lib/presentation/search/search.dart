import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/search/widgets/searchidle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CupertinoSearchTextField(
          itemColor: Colors.grey,
          prefixIcon: Icon(CupertinoIcons.search),
        ),
        kheight,
        Expanded(child: SearchIdle())
      ],
    )));
  }
}
