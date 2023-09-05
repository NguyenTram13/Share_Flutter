import 'package:flutter/material.dart';

class PostCreate extends StatelessWidget {
  const PostCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CreatePostWidget(),
    );
  }
}

class CreatePostWidget extends StatefulWidget {
  @override
  _CreatePostWidgetState createState() => _CreatePostWidgetState();
}

class _CreatePostWidgetState extends State<CreatePostWidget> {
  TextEditingController _postController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 3), // Offset in the (x, y) direction
          ),
        ],
      ),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://res.cloudinary.com/dmeyrzzjp/image/upload/v1692422644/home/zdbeqcbtev90altqma7i.jpg',
            ),
          ),
          SizedBox(width: 8.0),
          Flexible(
            fit: FlexFit.loose,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "What's on your mind? " + "tram",
                  border: InputBorder.none),
            ),
          ),
          SizedBox(width: 8.0),
          Row(
            children: [
              Icon(
                Icons.image_outlined,
                color: Colors.green,
                size: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _postController.dispose();
    super.dispose();
  }
}
