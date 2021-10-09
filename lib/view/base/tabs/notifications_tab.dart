import 'package:flutter/material.dart';
import 'package:task/bloc/post_bloc.dart';
import 'package:task/data/model/response/user_notification.dart';

import '../notification_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
            child: Text('Notifications',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),
          BlocConsumer<PostCubit, RequestStates>(
              listener: (context, state) {},
              builder: (context, state) => state is NotificationSuccessState
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                          for (UserNotification notification
                              in state.notification)
                            NotificationWidget(notification: notification)
                        ])
                  : Container()),
        ],
      ),
    );
  }
}
