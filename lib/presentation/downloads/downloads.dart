import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/widgets/appbar.dart';

// ignore: must_be_immutable
class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  List imageList = [
    "https://m.media-amazon.com/images/M/MV5BNzllYTM0ZDgtZTk4NS00YjYzLTliNjktMjZmNTZmNGZlNzI4XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UX1000_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfAy59ntNv-38nxj75ctyCK6Ow-kxWRyMqbw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfL4YBYAgkrNAh5bpw4MnY_a4Xt7h-NdfR6Q&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(
          title: Text(
            'Downloads',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(children: const [
            kwidth,
            Icon(
              Icons.settings,
              color: kwhite,
            ),
            kwidth,
            Text('Smart Downloads')
          ]),
          kheight,
          const Text(
            'Introducing Downloads for you',
            textAlign: TextAlign.center,
          ),
          kheight,
          const Text(
            'we will download a personalised of movies and shows  for you, so thereis always something  to watch on your device.  ',
            textAlign: TextAlign.center,
          ),
          kheight,
          kheight,
          kheight,
          kheight,
          kheight,
          SizedBox(
            height: 300,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.40),
                  radius: size.width * .3,
                ),
                Rotate(
                  margin: const EdgeInsets.only(right: 130, bottom: 50),
                  imageList: imageList[2],
                  size: size,
                  rotation: -20,
                ),
                Rotate(
                  imageList: imageList[0],
                  size: size,
                  rotation: 20,
                  margin: const EdgeInsets.only(left: 130, bottom: 50),
                ),
                Rotate(
                  imageList: imageList[1],
                  size: size,
                  rotation: 0,
                  margin: const EdgeInsets.only(left: 0, bottom: 10),
                ),
              ],
            ),
          ),
          kheight,
          kheight,
          kheight,
          kheight,
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            color: Colors.blue,
            child: const Text('Set up'),
          ),
          kheight,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onPressed: () {},
              color: kwhite,
              child: const Text('See what you can download'),
            ),
          ),
        ],
      ),
    );
  }
}

class Rotate extends StatelessWidget {
  Rotate(
      {Key? key,
      required this.imageList,
      required this.size,
      required this.margin,
      required this.rotation})
      : super(key: key);
  EdgeInsets margin;
  final String imageList;
  final Size size;
  dynamic rotation;
  dynamic height;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation * pi / 180,
      child: Padding(
        padding: margin,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(imageList),
                fit: BoxFit.cover,
              )),
          width: size.width * .4,
          height: height,
        ),
      ),
    );
  }
}
