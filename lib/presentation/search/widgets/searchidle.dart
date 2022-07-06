import 'package:flutter/material.dart';

import 'package:netflix/core/const.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Top Searches',
          style: TextStyle(fontSize: 24),
        ),
        kheight,
        Expanded(
          child: ListView.separated(
              itemBuilder: ((context, index) {
                return Tile();
              }),
              separatorBuilder: ((context, index) {
                return SizedBox(
                  height: 20,
                );
              }),
              itemCount: 10),
        )
      ],
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: screenwidth.width * .35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://m.media-amazon.com/images/M/MV5BNzllYTM0ZDgtZTk4NS00YjYzLTliNjktMjZmNTZmNGZlNzI4XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_FMjpg_UX1000_.jpg'))),
        ),
        Expanded(child: Text('Movie name')),
        Icon(
          Icons.play_circle_fill,
          color: Colors.white,
        )
      ],
    );
  }
}
