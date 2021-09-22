import 'package:flutter/material.dart';
import 'package:task/data/model/response/user_notification.dart';

class NotificationWidget extends StatelessWidget {
  final UserNotification notification;

  const NotificationWidget({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(notification.imageUrl),
                radius: 35.0,
              ),
              const SizedBox(width: 15.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(notification.content,
                      style: const TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold)),
                  Text(notification.time,
                      style:
                          const TextStyle(fontSize: 15.0, color: Colors.grey)),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(Icons.more_horiz),
              Text(''),
            ],
          )
        ],
      ),
    );
  }
}
