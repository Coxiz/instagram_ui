import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';
import '../widgets/story_item.dart';
import '../widgets/tab_item.dart ';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "mhafizhalfayyadh",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
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
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                "Muhammad Hafizh Alfayyadh",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                "Programmer",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 3,
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
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  print("Edit Profile");
                },
                child: Container(
                  height: 40,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFFBDBDBD), width: 1),
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 40,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFBDBDBD), width: 1),
                ),
                child: Icon(Icons.arrow_drop_down_sharp),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(
                      "https://picsum.photos/200/300?random=1", "Story 1"),
                  StoryItem(
                      "https://picsum.photos/200/300?random=2", "Story 2"),
                  StoryItem(
                      "https://picsum.photos/200/300?random=3", "Story 3"),
                  StoryItem(
                      "https://picsum.photos/200/300?random=4", "Story 4"),
                  StoryItem(
                      "https://picsum.photos/200/300?random=5", "Story 5"),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(65 / 2),
                            border: Border.all(color: Colors.grey)),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(height: 5),
                      Text("New")
                    ],
                  )
                ],
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: TabItem(Icons.grid_on_outlined, true)),
            Expanded(child: TabItem(Icons.person_pin_outlined, false)),
          ],
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 189,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) => Image.network(
            "https://picsum.photos/200/300?random=1",
            fit: BoxFit.cover,
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Reels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
