import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/fastLaugh/widget/videolistitem.dart';
import 'package:netflix/presentation/home/widgets/mainContainer.dart';
import 'package:netflix/presentation/home/widgets/mainText.dart';
import 'package:netflix/presentation/home/widgets/titlecont.dart';
import 'package:netflix/presentation/widgets/appbar.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                print(direction);
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      Homestack(height: height),
                      MainCardText(title: 'Released in the past year'),
                      MainCardText(title: 'Trending Now'),
                      Numberwidget(),
                      MainCardText(title: 'Tense Drama'),
                      MainCardText(title: 'South Indian Cinema')
                    ],
                  ),
                  scrollNotifier.value == true
                      ? Container(
                          height: 90,
                          color: backroundColor.withOpacity(.3),
                          child: AnimatedContainer(
                            duration: Duration(microseconds: 1000000),
                            child: Column(
                              children: [
                                AppBarWidget(
                                    title: Image.network(
                                  'https://pngimg.com/uploads/netflix/netflix_PNG10.png',
                                  height: 50,
                                  width: 50,
                                )),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('TV Shows'),
                                        Text('Movies'),
                                        Text('Categories')
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : kheight,
                ],
              ),
            );
          }),
    ));
  }
}

class Homestack extends StatelessWidget {
  const Homestack({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height * .77,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.filmibeat.com/fanimg/movie/18741/malik-photos-images-67409.jpg'))),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TexIcon(data: 'My List', icon: Icons.add),
              TextButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kwhite)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: backroundColor,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'Play',
                      style: TextStyle(color: backroundColor),
                    ),
                  )),
              TexIcon(data: 'info', icon: Icons.info)
            ],
          ),
        )
      ],
    );
  }
}

class Numberwidget extends StatelessWidget {
  const Numberwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainText(
          title: 'title',
        ),
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumstackContainer(
                      index: index + 1,
                    )),
          ),
        )
      ],
    );
  }
}

class MainCardText extends StatelessWidget {
  MainCardText({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainText(
          title: title,
        ),
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => MainContainer()),
          ),
        )
      ],
    );
  }
}
