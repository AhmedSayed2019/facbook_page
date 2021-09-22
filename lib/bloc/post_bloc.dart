import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/data/model/response/group_model.dart';
import 'package:task/data/model/response/post_model.dart';
import 'package:task/data/model/response/sponsor_model.dart';
import 'package:task/data/model/response/story_model.dart';
import 'package:task/data/model/response/user_model.dart';
import 'package:task/utility/device_screen_type.dart';
part 'post_request_status.dart';



class PostCubit extends Cubit<RequestStates> {
  PostCubit() : super(RequestInitialState()) {
    getPosts();
  }

  static PostCubit get(context) => BlocProvider.of(context);
  List<Post> postList = [];
  List<StoryModel> storyList = [];
  List<UserModel> contactList = [];
  List<GroupModel> groupList = [];
  List<SponsorModel> sponsorList = [];
  List<GroupModel> shortcutsList = [];

  Future<void> getPosts() async {
    emit(RequestLoadingState());

    await Future.delayed(Duration(seconds: 2), () {
      postList = [

        Post(type: PostType.textImage,
            images: [
              'https://s3-eu-west-1.amazonaws.com/wuzzuf/files/company_logo/The-Post-Office-Egypt-39194-1548624988.jpg'
            ],
            profileImageUrl: 'assets/jeremy.jpg',
            username: 'Jeremy',
            time: '13h',
            content: 'I am going to make a Flutter complete course, where i will be teaching all the things that a developer would need to know in order to become a great flutter developer. Course is for beginners, and will be taught everything related to flutter from scratch!!',
            likes: '52',
            comments: '1',
            shares: '6'),
        Post(type: PostType.textImage,
            images: [
              'https://s3-eu-west-1.amazonaws.com/wuzzuf/files/company_logo/The-Post-Office-Egypt-39194-1548624988.jpg'
            ],
            profileImageUrl: 'assets/eddison.jpg',
            username: 'Eddison',
            time: '1w',
            content: 'Good afternoon people, hope you are doing well. STAY HOME STAY SAFE. Hope you are healthy and happy. Wish you good health guys :)',
            likes: '233',
            comments: '6',
            shares: '4'),
        Post(type: PostType.Images,
            images: [
              'https://s3-eu-west-1.amazonaws.com/wuzzuf/files/company_logo/The-Post-Office-Egypt-39194-1548624988.jpg',
              'https://s3-eu-west-1.amazonaws.com/wuzzuf/files/company_logo/The-Post-Office-Egypt-39194-1548624988.jpg'
            ],
            profileImageUrl: 'assets/mathew.jpg',
            username: 'Mathew Hallberg',
            time: '2d',
            content: 'Hey guys this is Mathew, I recently created a cool AR/VR application and pushed it to github, interested people can go and see the working of the app. I hope you guys like it!',
            likes: '61',
            comments: '3',
            shares: '2'),
        Post(type: PostType.text,
            images: [],
            profileImageUrl: 'assets/Sam Wilson.jpg',
            username: 'Sam Wilson',
            time: '5h',
            content: 'Hey guys whats up, This is Sam Wilson. I am currently in singapore. Came here to make some amazing memories',
            likes: '63',
            comments: '11',
            shares: '2'),
        Post(type: PostType.text,
            images: [],
            profileImageUrl: 'assets/olivia.jpg',
            username: 'Olivia',
            time: '3w',
            content: 'I am starting a job in Los Angeles next week, this is my first ever job. Wish me luck guys',
            likes: '77',
            comments: '7',
            shares: '2'),

      ];

      storyList = [
        StoryModel(
            storyImage: "https://images.unsplash.com/photo-1598240087583-2f610faf1eaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1275&q=80",
            userImage: "https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80",
            userName: "Tony"),
        StoryModel(
            storyImage: "https://images.unsplash.com/flagged/photo-1556746834-1cb5b8fabd54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2252&q=80",
            userImage: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
            userName: "Alex"),
        StoryModel(
            storyImage: "https://images.unsplash.com/photo-1575997759258-91792eaaf87b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            userImage: "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80",
            userName: "Luis Villasmil"),
        StoryModel(
            storyImage: "https://images.unsplash.com/photo-1505391847043-8b6e24dd6c28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            userImage: "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
            userName: "Nicolos Horn"),
        StoryModel(
            storyImage: "https://images.unsplash.com/photo-1594463750939-ebb28c3f7f75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            userImage: "https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            userName: "Ben Parker"),
        StoryModel(
            storyImage: "https://images.unsplash.com/photo-1505391847043-8b6e24dd6c28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            userImage: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            userName: "Minh Pham"),
        StoryModel(
            storyImage: "https://images.unsplash.com/photo-1585128993280-9456c19c987d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1872&q=80",
            userImage: "https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
            userName: "Charles"),
      ];

      contactList = [
        UserModel(id: 1, userName: 'Tony', image: 'https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80', isConnected: true),
        UserModel(id: 2, userName: 'Alex', image: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80', isConnected: false),
        UserModel(id: 3, userName: 'Luis Villasmil', image: 'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80', isConnected: true),
        UserModel(id: 4, userName: 'Ben Parker', image: 'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', isConnected: false),
        UserModel(id: 5, userName: 'Minh Pham', image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', isConnected: false),
        UserModel(id: 6, userName: 'Charles', image: 'https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', isConnected: true),
      ];

      groupList = [
        GroupModel(id: 1, groupName: 'Tony', groupImage: 'https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80'),
        GroupModel(id: 2, groupName: 'Friends', groupImage: 'https://www.facebook.com/rsrc.php/v3/y8/r/S0U5ECzYUSu.png'),
        GroupModel(id: 3, groupName: 'Jobs', groupImage: 'https://www.facebook.com/rsrc.php/v3/yo/r/DO-SN-shaZL.png'),
        GroupModel(id: 4, groupName: 'Groups', groupImage: 'https://www.facebook.com/rsrc.php/v3/y5/r/PrjLkDYpYbH.png'),
        GroupModel(id: 5, groupName: 'Marketplace', groupImage: 'https://www.facebook.com/rsrc.php/v3/yU/r/D2y-jJ2C_hO.png'),
        GroupModel(id: 6, groupName: 'Watch', groupImage: 'https://www.facebook.com/rsrc.php/v3/y5/r/duk32h44Y31.png'),
      ];

      shortcutsList = [
        GroupModel(id: 1, groupName: 'Tony', groupImage: 'https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80'),
        GroupModel(id: 2, groupName: 'Alex', groupImage: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80'),
        GroupModel(id: 3, groupName: 'Luis Villasmil', groupImage: 'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80'),
        GroupModel(id: 4, groupName: 'Ben Parker', groupImage: 'https://images.unsplash.com/photo-1528763380143-65b3ac89a3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
        GroupModel(id: 5, groupName: 'Minh Pham', groupImage: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
        GroupModel(id: 6, groupName: 'Charles', groupImage: 'https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
      ];


      sponsorList = [
        SponsorModel(id: 1, sponsorName: 'Townteam', image: 'data:image/png;base64,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', link: 'https://townteam.com'),
        SponsorModel(id: 2, sponsorName: '2B Shop', image: 'data:image/png;base64,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', link: 'https://www.2bclothes.com')
      ];


    });

    emit(RequestSuccessState());
  }
}
