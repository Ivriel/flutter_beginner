import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'setting_activity.dart';
import 'widgets/profile_picture.dart';
import 'widgets/info_item.dart';
import 'widgets/story_item.dart';
import 'widgets/tab_item.dart';

class ProfileInstagramPage extends StatelessWidget {
   ProfileInstagramPage({super.key});
 final  List<String> ImageLinks = [
  'https://picsum.photos/536/354',
  'https://picsum.photos/536/355',
  'https://picsum.photos/536/356',
  'https://picsum.photos/536/357',
  'https://picsum.photos/536/358',
  'https://picsum.photos/536/359',
  'https://picsum.photos/536/360',
  'https://picsum.photos/536/361',
  'https://picsum.photos/536/362',
  'https://picsum.photos/536/363'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  context: context, 
                  builder: (context) => Container(
                    height: 480,
                  )
                );
              },
              child: Row(
                children: [
                  Text(
                    "f0rgotten",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    builder: (context) => Container(
                      height: 480,
                    )
                  );
                },
                icon: Icon(Icons.add_box_outlined),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    _slideAnimationRight(),
                  );
                },
                icon: Icon(Icons.menu),
                color: Colors.black,
              ),
            ],
            expandedHeight: 56, 
            pinned: false,  
            floating: false, 
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    ProfilePicture(),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InfoItem("104", "postingan"),
                          InfoItem("143", "pengikut"),
                          InfoItem("250", "mengikuti")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "f0rgotten",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 11),
                child: RichText(
                  text: const TextSpan(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ut nisl nec nunc suscipit condimentum. ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "#hastag ",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () => launchUrl(
                      Uri.parse('https://www.instagram.com/wynsc_u13/')),
                  child: Text(
                    "Link Instagram Asli",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StoryItem("Story 1",'https://picsum.photos/536/354'),
                      StoryItem("Story 2",'https://picsum.photos/536/355'),
                      StoryItem("Story 3",'https://picsum.photos/536/356'),
                      StoryItem("Story 4",'https://picsum.photos/536/357'),
                      StoryItem("Story 5",'https://picsum.photos/536/358'),
                      StoryItem("Story 6",'https://picsum.photos/536/359'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabItem(
                    true,Icons.grid_on_outlined,
                  ),
                  TabItem(
                    false, Icons.movie_outlined
                    ),
                  TabItem(
                    false,Icons.person_pin_outlined
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: ImageLinks.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2
                  ),
                itemBuilder: (context,index) => Image.network(
                  ImageLinks[index],
                  fit: BoxFit.cover,
                )
              )
            ]),
          ),
        ],
      ),
    );
  }
}

Route _slideAnimationRight() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
    const SettingActivityPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0); 
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
