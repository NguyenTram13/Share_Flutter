import 'dart:convert';

List<AdPost> AdPostListFromJson(String val) =>
    List<AdPost>.from(json.decode(val).map((post) => AdPost.formJson(post)));

class AdPost {
  final int idPost;
  final String content;
  final List<dynamic> file;
  final List<dynamic> like;
  final List<dynamic> comment;
  final List<dynamic> share;
  final String createAt;
  final dynamic user;

  AdPost({
    required this.idPost,
    required this.content,
    required this.file,
    required this.like,
    required this.comment,
    required this.share,
    required this.createAt,
    required this.user,
  });
  factory AdPost.formJson(Map<String, dynamic> data) => AdPost(
      idPost: data['id'],
      content: data['content'] == null ? "" : data['content'],
      file: data['file_data'] == null ? [] : data['file_data'],
      like: data['like_data'] == null ? ['0'] : data['like_data'],
      comment: data['comment_data'] == null ? ['0'] : data['comment_data'],
      share: data['user_share'] == null ? ['0'] : data['user_share'],
      createAt: data['createdAt'] == null ? '' : data['createdAt'],
      user: data['user_data']);
}
