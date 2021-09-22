import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/data/model/response/post_model.dart';
import 'package:task/utility/color_resources.dart';
import 'package:task/utility/images.dart';

import '../avatar_image.dart';
import '../custom_text_field.dart';

class TextImagePostWidget extends StatelessWidget {

  final Post post;

  TextImagePostWidget({
    required this.post
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImageUrl),
                radius: 20.0,
              ),
              const SizedBox(width: 7.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.username, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
                  const SizedBox(height: 5.0),
                  Row(
                    children: [
                      Text(post.time),
                      Icon(
                        Icons.public,
                        color: ColorResources.colorGrayLite,
                        size: 12.0,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),

          const SizedBox(height: 20.0),
          Text(post.content, style: const TextStyle(fontSize: 15.0)),
          Image.network(post.images[0]),

          const SizedBox(height: 10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(Images.like_icon, width: 15.0 , height: 15.0),
                  Text(' ${post.likes}'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('${post.comments} comments  •  '),
                  Text('${post.shares} shares'),
                ],
              ),
            ],
          ),

          const Divider(height: 30.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Like', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Comment', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.share, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Share', style: TextStyle(fontSize: 14.0)),
                ],
              ),
            ],
          ),
          const Divider(height: 30.0),
          Container(
            height: 50,
            child: Row(
              children: [
                AvatarImage("https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp" ,false),
                Expanded(
                  child: CustomTextField(
                    hintText: "Write a comment…",
                    fillColor: Theme.of(context).backgroundColor,
                    isShowBorder: true,
                    inputType: TextInputType.text,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}