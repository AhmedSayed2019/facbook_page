import 'package:task/data/model/response/post_model.dart';
import 'package:flutter/material.dart';
import 'package:task/utility/dimensions.dart';
import 'package:task/utility/responsive_helper.dart';
import 'package:task/view/base/center_widget.dart';
import 'package:task/view/base/group_widget.dart';

import '../contacts_widget.dart';
import '../online_widget.dart';
import '../post/post_widget.dart';
import '../shortuts_widget.dart';
import '../sponsored_widget.dart';
import '../stories_widget.dart';
import '../write_something_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/post_bloc.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PostCubit(),
      child: SingleChildScrollView(
        child: BlocConsumer<PostCubit, RequestStates>(
            listener: (context, state) {},
            builder: (context, state) {
              var postList = PostCubit.get(context).postList;
              var storyList = PostCubit.get(context).storyList;
              var contactList = PostCubit.get(context).contactList;
              var groupList = PostCubit.get(context).groupList;
              var sponsorList = PostCubit.get(context).sponsorList;
              var shortcutsList = PostCubit.get(context).shortcutsList;
              return Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ResponsiveHelper.isTab(context) ||
                                ResponsiveHelper.isMobile(context)
                            ? Container()
                            : Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          Dimensions.PADDING_SIZE_SMALL),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .PADDING_SIZE_SMALL),
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  child: Container(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: Dimensions
                                                            .PADDING_SIZE_SMALL),
                                                    child: GroupWidget(
                                                      groupList: groupList,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Divider(),
                                              Expanded(
                                                flex: 5,
                                                child: Container(
                                                  child: ShortcutsWidget(
                                                    shortcutsList:
                                                        shortcutsList,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(flex: 2, child: Container()),
                                    ],
                                  ),
                                ),
                              ),

                        Expanded(
                            flex: 4,
                            child: SingleChildScrollView(
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
                                    ResponsiveHelper.isMobile(context)
                                        ? Container()
                                        : OnlineWidget(),

                                    SizedBox(
                                      height: Dimensions.PADDING_SIZE_SMALL,
                                    ),

                                    Container(
                                        child: state is RequestLoadingState
                                            ? Center(
                                                child: CircularProgressIndicator(
                                                valueColor: AlwaysStoppedAnimation<
                                                        Color>(
                                                    Theme.of(context).primaryColor),
                                              ))
                                            : PostWidget(postList: postList),),
                                  ],
                                ),
                              ),
                            )),


                        ResponsiveHelper.isMobile(context)
                            ? Container()
                            : Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          Dimensions.PADDING_SIZE_SMALL),
                                  child: Row(
                                    children: [
                                      ResponsiveHelper.isTab(context)
                                          ? Container()
                                          : Expanded(
                                              flex: 2, child: Container()),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .PADDING_SIZE_SMALL),
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  child: SponsorWidget(
                                                    sponsorList: sponsorList,
                                                  ),
                                                ),
                                              ),
                                              Divider(),
                                              Expanded(
                                                flex: 5,
                                                child: Container(
                                                  child: ContactWidget(
                                                    contactList: contactList,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  // SeparatorWidget(),
                ],
              );
            }),
      ),
    );
  }
}
