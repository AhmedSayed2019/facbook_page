import 'package:flutter/material.dart';
import 'package:task/data/model/response/home_model.dart';
import 'package:task/utility/dimensions.dart';
import 'package:task/utility/responsive_helper.dart';
import 'package:task/view/base/post/post_widget.dart';

import 'online_widget.dart';
import 'stories_widget.dart';
import 'write_something_widget.dart';

class CenterWidget extends StatelessWidget {
  CenterWidget({required this.postList, required this.storyList});
  List<PostModel> postList = [];
  List<StoryModel> storyList = [];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            ResponsiveHelper.isMobile(context)
                ? const WriteSomethingWidget()
                : Container(),
            SizedBox(
              height: Dimensions.PADDING_SIZE_SMALL,
            ),
            StoriesWidget(storyList: storyList),

            SizedBox(
              height: Dimensions.PADDING_SIZE_SMALL,
            ),

            ResponsiveHelper.isMobile(context)
                ? Container()
                : const WriteSomethingWidget(),
            // SeparatorWidget(),

            SizedBox(
              height: Dimensions.PADDING_SIZE_SMALL,
            ),
            ResponsiveHelper.isMobile(context) ? Container() : OnlineWidget(),

            SizedBox(
              height: Dimensions.PADDING_SIZE_SMALL,
            ),

            PostWidget(postList: postList),
          ],
        ),
      ),
    );
  }


}
