import 'package:flutter/material.dart';
import 'package:netflix/presentation/NewandHot/newandHot.dart';
import 'package:netflix/presentation/downloads/downloads.dart';
import 'package:netflix/presentation/fastLaugh/fastLaugh.dart';
import 'package:netflix/presentation/home/screenHome.dart';

import 'package:netflix/presentation/mainpage/widgets/bottomNav.dart';
import 'package:netflix/presentation/search/search.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  List page = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexchangeNotifier,
            builder: (ctx, int index, _) {
              return page[index];
            }),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
