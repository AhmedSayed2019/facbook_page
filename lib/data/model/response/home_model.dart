


import 'package:task/utility/device_screen_type.dart';

class HomeModel {
  List<GroupModel>? groupList;
  List<PostModel>? postList;
  List<SponsorModel>? sponsorList;
  List<StoryModel>? storyList;
  List<UserModel>? contactList;
  List<GroupModel>? shortcutsList;

  HomeModel({ this.groupList, this.postList, this.sponsorList, this.storyList,
  this.contactList, this.shortcutsList});
}


class GroupModel {
  int id;
  String groupName;
  String groupImage;

  GroupModel({
    required this.id,
    required this.groupName,
    required this.groupImage,
  });

}

class PostModel{
  final String? profileImageUrl;
  final String? username;
  final String? time;
  final String? content;
  final String? likes;
  final String? comments;
  final String? shares;
  final PostType? type;
  final List<String>? images;

  PostModel({
    this.profileImageUrl,
    this.username,
    this.time,
    this.content,
    this.likes,
    this.comments,
    this.shares,
    this.type,
    this.images
  });


}


class SponsorModel {
  int id;
  String sponsorName;
  String image;
  String link;

  SponsorModel({
    required this.id,
    required this.sponsorName,
    required this.image,
    required this.link,
  });

}

class StoryModel{

  final String storyImage;
  final String userImage;
  final String userName;

  StoryModel({required this.storyImage,required this.userImage,required this.userName});


}



class UserModel {
  int id;
  String userName;
  String image;
  bool isConnected;

  UserModel({
    required this.id,
    required this.userName,
    required this.image,
    required this.isConnected,
  });

}


