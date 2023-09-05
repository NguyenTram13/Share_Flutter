import 'dart:convert';

List<AdStory> AdStoryListFromJson(String val) => List<AdStory>.from(
    json.decode(val).map((story) => AdStory.formJson(story)));

class AdStory {
  final String image;
  final String username;

  AdStory({required this.image, required this.username});
  factory AdStory.formJson(Map<String, dynamic> data) => AdStory(
      image: data['user_data']['avatar'],
      username: data['user_data']['lastName']);
}
