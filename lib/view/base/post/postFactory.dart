import 'package:flutter/cupertino.dart';
import 'package:task/data/model/response/home_model.dart';
import 'package:task/utility/device_screen_type.dart';
import 'package:task/view/base/post/ipost.dart';
import 'package:task/view/base/post/text_image_post_widget.dart';
import 'package:task/view/base/post/text_post_widget.dart';

import 'images_post_widget.dart';



class PostFactory extends IPost {

  IPost _getPost(PostType type) {
    switch (type) {
      case PostType.text:
        return TextPostWidget();
      case PostType.textImage:
        return TextImagePostWidget();
      case PostType.Images:
        return ImagesPostWidget();
      default:
        return TextPostWidget();
    }
  }

  @override
  Widget buildPost(BuildContext context, PostModel post) {
    return _getPost(post.type!).buildPost(context, post);
  }
}
