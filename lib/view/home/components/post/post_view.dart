import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lvflutter/model/ad_post.dart';
import 'package:lvflutter/view/home/components/post/post_cart.dart';
// import 'package:shoppet/model/ad_post.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:lvflutter/view/utils/TimeAgo.dart';
// import 'package:shoppet/view/home/components/carousel_slider/post_card.dart';

class PostView extends StatefulWidget {
  final List<AdPost> postList;

  const PostView({Key? key, required this.postList}) : super(key: key);
  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  int _currentIndex = 0;

  @override
  void initState() {
    // _postList =
    //     widget.postList.map((e) => postCard(image: e.image)).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
return  Column(
  mainAxisSize: MainAxisSize.max,
  children: List.generate(widget.postList.length, (index) {
    final post = widget.postList[index];
    return FacebookPostCard(post: post);
  }),
);
  }
}

class FacebookPostCard extends StatelessWidget {
  final dynamic post;

  const FacebookPostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(post.user['avatar']),
              radius: 24.0, // Adjust the radius as needed
            ),
            title: Text(post.user['firstName'] + ' ' + post.user['lastName']),
            subtitle: TimeAgoWidget(
              timestamp: post.createAt,
            ),
            trailing: Icon(Icons.more_horiz), // Add your desired trailing icon
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(post.content), // Display text content
                  SizedBox(height: 8), // Add spacing
                  ImageList(images: post.file)
                ],
              ),
            ),
          ),
          // const Divider(),

          Container(
            width: double.infinity,
            height: 30,
            // color: Colors.green,
            padding: EdgeInsets.only(left: 4.0, right: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    // color: Colors.red,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.thumb_up,
                          size: 17.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 17.0,
                          color: Colors.red,
                        ),
                        Text((post.like.length).toString()),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    // color: Colors.blue,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    // color: Colors.red,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Comments '),
                        Text((post.comment.length).toString()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  // Text(post.like.lenght.toString()),
                  Icon(Icons.thumb_up_off_alt_outlined),
                  SizedBox(width: 4.0),
                  Text((post.like.length).toString()),
                  SizedBox(width: 4.0),
                  Text('Like'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment_outlined),
                  SizedBox(width: 4.0),
                  Text((post.comment.length).toString()),
                  SizedBox(width: 4.0),
                  Text('Comment'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share_outlined),
                  SizedBox(width: 4.0),
                  Text((post.share.length).toString()),
                  SizedBox(width: 4.0),
                  Text('Share'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

class ImageList extends StatelessWidget {
  final List<dynamic> images;

  ImageList({required this.images});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: images.length > 2 ? 2 : 1, // 2 items per row
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), // Disable scrolling
            children: images.map((imageData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  imageData['link'],
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
