import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget{

  final String profileAvatarImage;
  final bool isConnected;


  AvatarImage(this.profileAvatarImage , this.isConnected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Stack(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(profileAvatarImage),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                height: 15.0,
                width: 15.0,
                decoration: isConnected ?BoxDecoration(
                  color: Color(0xFF50b525),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                ):null,
              ),
            )
          ]
      ),
    );
  }

}