import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/fastLaugh/widget/videolistitem.dart';
import 'package:netflix/presentation/search/widgets/searchresult.dart';
import 'package:netflix/presentation/widgets/appbar.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backroundColor,
          title: Text(
            'New & Hot',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            ),
            kwidth,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Container(
                color: Colors.blue,
                width: 28,
                height: 10,
              ),
            ),
            kwidth
          ],
          bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: kwhite,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelColor: backroundColor,
              indicator: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(30)),
              tabs: [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                )
              ]),
        ),
        body: TabBarView(children: [comingSoon(context), watching()]),
      ),
    );
  }

  comingSoon(context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemBuilder: ((context, index) => Cominsoon(size: size)),
      itemCount: 5,
    );
  }

  watching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Data',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          kheight,
          Text(
              'simply dummy text of the  It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
          kheight,
          Stack(
            children: [
              Container(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfL4YBYAgkrNAh5bpw4MnY_a4Xt7h-NdfR6Q&usqp=CAU',
                  fit: BoxFit.cover,
                ),
                height: 200,
                width: double.infinity,
              ),
              Positioned(
                  right: 10, bottom: 10, child: Icon(Icons.volume_off_rounded)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TexIcon(data: 'Share ', icon: Icons.share),
              kwidth,
              TexIcon(data: 'LOL', icon: Icons.play_arrow),
              kwidth,
              TexIcon(data: 'My List', icon: Icons.add),
            ],
          )
        ],
      ),
    );
  }
}

class Cominsoon extends StatelessWidget {
  const Cominsoon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            children: [
              Text('FEB'),
              Text('11'),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfL4YBYAgkrNAh5bpw4MnY_a4Xt7h-NdfR6Q&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                  height: 200,
                  width: size.width - 50,
                ),
                Positioned(
                    right: 10,
                    bottom: 10,
                    child: Icon(Icons.volume_off_rounded))
              ],
            ),
            Row(
              children: [
                Text('Movie Name'), kwidth,
                kwidth, kwidth,
                kwidth, kwidth,

                kwidth,
                // Spacer(),
                Row(
                  children: [
                    TexIcon(data: 'data', icon: Icons.alarm_off_sharp),
                    TexIcon(data: 'data', icon: Icons.alarm_off_sharp)
                  ],
                ),
              ],
            ),
            Text('data'),
            kheight,
            Text('sdfghjkldfghjkldfjlshjksdjkls')
          ],
        )
      ],
    );
  }
}
