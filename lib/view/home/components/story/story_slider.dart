import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StorySlider extends StatefulWidget {
  const StorySlider({Key? key}) : super(key: key);

  @override
  _StorySliderState createState() => _StorySliderState();
}

class _StorySliderState extends State<StorySlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MyStory(
                'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1692422644/home/zdbeqcbtev90altqma7i.jpg'),
            FriendStory(
                'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1692422644/home/zdbeqcbtev90altqma7i.jpg',
                'tram'),
            FriendStory(
                'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1692422644/home/zdbeqcbtev90altqma7i.jpg',
                "u"),
            FriendStory(
                'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1692422644/home/zdbeqcbtev90altqma7i.jpg',
                'c'),
          ],
        ),
      ),
    );
  }
}

// my story
Widget MyStory(myStory) {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
    child: Container(
      width: 120.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: NetworkImage(myStory),
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.2), // Semi-transparent background
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_outlined,
                    color: Colors.orange,
                    size: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Add story',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

//friend story
Widget FriendStory(friendStory, proName) {
  return Padding(
    padding: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
    child: Container(
      width: 120.0,
      height: double.infinity,
      color: Colors.red,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: NetworkImage(friendStory),
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.2), // Semi-transparent background
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 4.0),
                    borderRadius:
                        BorderRadius.circular(20.0), // Half of the width/height
                  ),
                  child: ClipRRect(
                    // Clip the child (Image) to stay within the boundaries
                    borderRadius:
                        BorderRadius.circular(20.0), // Match the border radius
                    child: Image(
                      image: NetworkImage(friendStory),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  proName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
