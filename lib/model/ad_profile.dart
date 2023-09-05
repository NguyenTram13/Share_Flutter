import 'dart:convert';

List<AdProfile> AdProfileListFromJson(String val) => List<AdProfile>.from(
    json.decode(val).map((profile) => AdProfile.formJson(profile)));

class AdProfile {
  final int id;
  final String fristName;
  final String lastName;
  final String email;
  final String phone;
  final String avatar;
  final String backgroundImg;
  final String description;
  final String address;

  AdProfile({
    required this.id,
    required this.fristName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.backgroundImg,
    required this.description,
    required this.address,
  });
  factory AdProfile.formJson(Map<String, dynamic> data) => AdProfile(
        id: data['id'],
        fristName: data['fristName'] == null ? "" : data['fristName'],
        lastName: data['lastname'] == null ? '' : data['lastname'],
        email: data['email'] == null ? '' : data['email'],
        phone: data['phone'] == null ? '' : data['phone'],
        avatar: data['avatar'] == null ? ' ' : data['avatar'],
        backgroundImg: data['bg_img'] == null ? '' : data['bg_img'],
        description: data['description'] == null ? '' : data['description'],
        address: data['address'] == null ? '' : data['address'],
      );
}
