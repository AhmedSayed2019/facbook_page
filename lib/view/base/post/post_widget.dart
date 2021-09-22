import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/data/model/response/post_model.dart';
import 'package:task/utility/color_resources.dart';
import 'package:task/utility/device_screen_type.dart';
import 'package:task/utility/dimensions.dart';
import 'package:task/view/base/post/images_post_widget.dart';
import 'package:task/view/base/post/text_image_post_widget.dart';
import 'package:task/view/base/post/text_post_widget.dart';

class PostWidget extends StatelessWidget {
  final List<Post> postList;

  PostWidget({required this.postList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: postList.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
          padding: const EdgeInsets.all(Dimensions.FONT_SIZE_EXTRA_SMALL),

          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              border: Border.all(
                  width: 1.0,
                  color:ColorResources.colorGrayLite
              ),
              borderRadius: BorderRadius.circular(10.0)

          ),
          child: createPost(postList[index]),
        ),
      ),
    );
  }

  Widget createPost(Post post) {
    switch (post.type) {
      case PostType.text:
        return TextPostWidget(post: post);
      case PostType.textImage:
        return TextImagePostWidget(post: post);
      case PostType.Images:
        return ImagesPostWidget(post: post);
    }
  }
}

//class PostWidget extends StatelessWidget {
//
//   final Post post;
//
//   PostWidget({
//     required this.post
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(15.0),
//       child: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               CircleAvatar(
//                 backgroundImage: AssetImage(post.profileImageUrl),
//                 radius: 20.0,
//               ),
//               const SizedBox(width: 7.0),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(post.username, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
//                   const SizedBox(height: 5.0),
//                   Text(post.time)
//                 ],
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 20.0),
//
//           Text(post.content, style: const TextStyle(fontSize: 15.0)),
//
//           const SizedBox(height: 10.0),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                    Icon(FontAwesomeIcons.thumbsUp, size: 15.0, color: Theme.of(context).primaryColor),
//                   Text(' ${post.likes}'),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   Text('${post.comments} comments  •  '),
//                   Text('${post.shares} shares'),
//                 ],
//               ),
//             ],
//           ),
//
//           const Divider(height: 30.0),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Row(
//                 children: const <Widget>[
//                   Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
//                   SizedBox(width: 5.0),
//                   Text('Like', style: TextStyle(fontSize: 14.0)),
//                 ],
//               ),
//               Row(
//                 children: const <Widget>[
//                   Icon(FontAwesomeIcons.commentAlt, size: 20.0),
//                   SizedBox(width: 5.0),
//                   Text('Comment', style: TextStyle(fontSize: 14.0)),
//                 ],
//               ),
//               Row(
//                 children: const <Widget>[
//                   Icon(FontAwesomeIcons.share, size: 20.0),
//                   SizedBox(width: 5.0),
//                   Text('Share', style: TextStyle(fontSize: 14.0)),
//                 ],
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
