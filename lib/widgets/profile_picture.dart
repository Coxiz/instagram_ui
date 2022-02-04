import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(100 / 2),
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.amber],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ))),
        Container(
            width: 85,
            height: 84,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(100 / 2),
                border: Border.all(color: Colors.white, width: 3),
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/536/354"),
                    fit: BoxFit.cover))),
      ],
    );
  }
}
