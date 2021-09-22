import 'package:flutter/material.dart';
import 'package:task/data/model/response/user_notification.dart';

import '../notification_widget.dart';

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
            child: Text('Notifications', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),

          for(UserNotification notification in notifications) NotificationWidget(notification: notification)
        ],
      ),
    );
  }
}