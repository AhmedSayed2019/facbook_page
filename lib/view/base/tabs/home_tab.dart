import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/post_bloc.dart';
import 'package:task/utility/dimensions.dart';
import 'package:task/utility/responsive_helper.dart';
import 'package:task/view/base/group_widget.dart';

import '../contacts_widget.dart';
import '../online_widget.dart';
import '../post/post_widget.dart';
import '../shortuts_widget.dart';
import '../sponsored_widget.dart';
import '../stories_widget.dart';
import '../write_something_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override

  @override
  void initState() {
    super.initState();
    PostCubit.get(context).getPosts();
    // BlocProvider.of<PostCubit>(context).getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
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
                        horizontal: Dimensions.PADDING_SIZE_SMALL),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                Dimensions.PADDING_SIZE_SMALL),
                            height: MediaQuery
                                .of(context)
                                .size
                                .height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Dimensions
                                              .PADDING_SIZE_SMALL),
                                      child: BlocBuilder<PostCubit, RequestStates>(

                                          builder: (context, state) =>
                                            state is RequestSuccessState ? GroupWidget(
                                              groupList: state.homeModel.groupList!,
                                            ):buildLoadingBar(context)

                                          ),

                                    ),
                                  ),
                                ),
                                Divider(),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: BlocBuilder<PostCubit, RequestStates>(
                                        builder: (context, state) =>
                                        state is RequestSuccessState ?
                                        ShortcutsWidget(
                                          shortcutsList: state.homeModel.shortcutsList!,
                                        ):buildLoadingBar(context)
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
                            BlocBuilder<PostCubit, RequestStates>(
                                builder: (context, state) =>
                                state is RequestSuccessState
                                    ? StoriesWidget(storyList: state.homeModel.storyList!)
                                    :buildLoadingBar(context)

                            ),

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
                            BlocBuilder<PostCubit, RequestStates>(
                                builder: (context, state) =>
                                state is RequestSuccessState
                                    ?PostWidget(postList: state.homeModel.postList!)
                                    :buildLoadingBar(context)

                            ),
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
                        horizontal: Dimensions.PADDING_SIZE_SMALL),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ResponsiveHelper.isTab(context)
                            ? Container()
                            : Expanded(flex: 1, child: Container()),
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                Dimensions.PADDING_SIZE_SMALL),
                            height: MediaQuery
                                .of(context)
                                .size
                                .height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child:  BlocBuilder<PostCubit, RequestStates>(
                                        builder: (context, state) =>
                                        state is RequestSuccessState
                                            ?SponsorWidget(sponsorList: state.homeModel.sponsorList!)
                                            :buildLoadingBar(context)

                                    ),

                                  ),
                                ),
                                Divider(),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child:  BlocBuilder<PostCubit, RequestStates>(
                                        builder: (context, state) =>
                                        state is RequestSuccessState
                                            ?ContactWidget(contactList: state.homeModel.contactList!)
                                            :buildLoadingBar(context)
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
      ),
    );
  }

  buildLoadingBar(BuildContext context){
    return Center(
      child: CircularProgressIndicator(
        valueColor:
        AlwaysStoppedAnimation<
            Color>(
            Theme.of(context)
                .primaryColor),
      ),
    );
  }
}
