import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';
import '../../fastLaugh/widget/videolistitem.dart';

class NumstackContainer extends StatelessWidget {
  NumstackContainer({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Container(
                width: 180,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imageList[2]))),
              ),
            ],
          ),
          Positioned(
              left: 15,
              bottom: -20,
              child: BorderedText(
                strokeWidth: 5.0,
                strokeColor: Colors.white,
                child: Text(
                  index.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 120,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
