import 'package:flutter/material.dart';
import 'package:task/data/model/response/home_model.dart';
import 'package:task/utility/color_resources.dart';
import 'package:task/utility/dimensions.dart';
import 'package:task/view/base/post/postFactory.dart';

class PostWidget extends StatelessWidget {
  final List<PostModel> postList;

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
              border:
                  Border.all(width: 1.0, color: ColorResources.colorGrayLite),
              borderRadius: BorderRadius.circular(10.0)),
          child: PostFactory().buildPost(context, postList[index]),
        ),
      ),
    );
  }
}
