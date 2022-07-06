import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/const.dart';

List imageList = [
  "https://m.media-amazon.com/images/M/MV5BNzllYTM0ZDgtZTk4NS00YjYzLTliNjktMjZmNTZmNGZlNzI4XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UX1000_.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfAy59ntNv-38nxj75ctyCK6Ow-kxWRyMqbw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfL4YBYAgkrNAh5bpw4MnY_a4Xt7h-NdfR6Q&usqp=CAU",
];

class VideoList extends StatelessWidget {
  VideoList({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(.5),
              radius: 30,
              child: Icon(
                Icons.volume_off,
                size: 30,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      imageList[index % imageList.length],
                    )),
                TexIcon(data: 'LOL', icon: Icons.emoji_emotions),
                TexIcon(data: 'My List', icon: Icons.add),
                TexIcon(data: 'Share ', icon: Icons.share),
                TexIcon(data: 'Play', icon: Icons.play_arrow),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TexIcon extends StatelessWidget {
  TexIcon({Key? key, required this.data, required this.icon}) : super(key: key);
  String data;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          kheight,
          Text(data)
        ],
      ),
    );
  }
}
