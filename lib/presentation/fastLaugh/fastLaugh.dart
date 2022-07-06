import 'package:flutter/material.dart';
import 'package:netflix/presentation/fastLaugh/widget/videolistitem.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(
          10,
          (index) => VideoList(
                index: index,
              )),
    ));
  }
}
