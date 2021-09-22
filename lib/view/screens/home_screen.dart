import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/data/model/response/user_model.dart';
import 'package:task/utility/color_resources.dart';
import 'package:task/utility/dimensions.dart';
import 'package:task/utility/images.dart';
import 'package:task/utility/responsive_helper.dart';
import 'package:task/view/base/AppBarButton.dart';
import 'package:task/view/base/avatar_image.dart';
import 'package:task/view/base/contacts_widget.dart';
import 'package:task/view/base/custom_text_field.dart';
import 'package:task/view/base/tabs/friends_tab.dart';
import 'package:task/view/base/tabs/home_tab.dart';
import 'package:task/view/base/tabs/menu_tab.dart';
import 'package:task/view/base/tabs/notifications_tab.dart';
import 'package:task/view/base/tabs/profile_tab.dart';
import 'package:task/view/base/tabs/watch_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:      ResponsiveHelper.isTab(context) || ResponsiveHelper.isMobile(context)
          ? AppBar(
        brightness: Brightness.light,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: const <Widget>[
                Text('facebook',
                    style: TextStyle(
                        color: ColorResources.colorPrimary,
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
        actions: [
          AppBarButton(
            icon: Icons.search,
            iconSize: 25.0,
            onPressed: () => print('Search'),
          ),
          AppBarButton(
            icon: FontAwesomeIcons.facebookMessenger,
            iconSize: 25.0,
            onPressed: () => print('Messenger'),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottom: TabBar(
          indicatorColor: ColorResources.colorPrimary,
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: ColorResources.colorPrimary,
          tabs: const [
            Tab(icon: Icon(Icons.home, size: 30.0)),
            Tab(icon: Icon(Icons.people, size: 30.0)),
            // Tab(icon: Icon(Icons.ondemand_video, size: 30.0)),
            Tab(icon: Icon(Icons.account_circle, size: 30.0)),
            Tab(icon: Icon(Icons.notifications, size: 30.0)),
            Tab(icon: Icon(Icons.menu, size: 30.0))
          ],
        ),
      )
          : null,
      body: ResponsiveHelper.isTab(context) || ResponsiveHelper.isMobile(context)
          ? TabBarView(
        controller: _tabController,
        children: [
          const HomeTab(),
          FriendsTab(),
          // const WatchTab(),
          const ProfileTab(),
          const NotificationsTab(),
          MenuTab()
        ],
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_DEFAULT),
            color: Theme.of(context).cardColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            Images.logo,
                            height: 40,
                            width: 40,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10.0),
                            height: 40.0,
                            width: 250.0,
                            child: CustomTextField(
                              hintText: 'Search Facebook',
                              fillColor:
                              Theme.of(context).backgroundColor,
                              icon: Icons.search,
                              isShowBorder: true,
                              isShowPrefixIcon: true,
                              inputType: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            AvatarImage(
                                'https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp',
                                false),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text('Tony',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                        fontSize: Dimensions
                                            .FONT_SIZE_SMALL))),
                            SizedBox(
                              width: Dimensions.PADDING_SIZE_SMALL,
                            )
                          ],
                        ),
                      ),
                    ),
                    AppBarButton(
                      icon: CupertinoIcons.circle_grid_3x3_fill,
                      iconSize: 20.0,
                      onPressed: () => print('Messenger'),
                    ),
                    AppBarButton(
                      icon: FontAwesomeIcons.facebookMessenger,
                      iconSize: 20.0,
                      onPressed: () => print('Messenger'),
                    ),
                    AppBarButton(
                      icon: Icons.arrow_drop_down_rounded,
                      iconSize: 20.0,
                      onPressed: () => print('more'),
                    ),
                    AppBarButton(
                      icon: Icons.search,
                      iconSize: 20.0,
                      onPressed: () => print('Search'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              const HomeTab(),
              FriendsTab(),
              // const WatchTab(),
              const ProfileTab(),
              const NotificationsTab(),
              MenuTab()
            ]),
          ),
        ],
      ),
    );
  }
}
