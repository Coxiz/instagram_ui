import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Row(
              children: [
                Text(
                  "mhafizhalfayyadh",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                )
              ],
            ),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
            ],
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              ProfilePicture(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoItem("Posts", "189"),
                    InfoItem("Followers", "1M"),
                    InfoItem("Following", "50"),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Muhammad Hafizh Alfayyadh",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: " #Hastag",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ]),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link goes here",
              style: TextStyle(color: Colors.blue),
            )),
        SizedBox(
          height: 5,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            )),
        SizedBox(
          height: 5,
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: Row()),
      ]),
    );
  }
}
