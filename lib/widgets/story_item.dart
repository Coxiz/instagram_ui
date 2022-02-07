import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.link, this.title);

  final String link;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(65 / 2),
                    border: Border.all(color: Colors.grey, width: 1),
                  )),
              Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(65 / 2),
                      image: DecorationImage(
                          image: NetworkImage(link), fit: BoxFit.cover))),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
