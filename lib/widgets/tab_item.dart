import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  TabItem(this.icon, this.active);

  final IconData icon;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Icon(icon),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        width: 1,
        color: active == true ? Colors.black : Colors.white,
      ))),
    );
  }
}
