import 'package:flutter/material.dart';
import 'package:task/utility/color_resources.dart';
import 'package:task/utility/dimensions.dart';

class OnlineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all( Dimensions.FONT_SIZE_EXTRA_SMALL),
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
      height: 75.0,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 15.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL,
                vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                width: 1.0,
                color: Theme.of(context).primaryColor
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.video_call, size: 30.0, color: Colors.purple),
                SizedBox(width: 5.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Create Room', style: TextStyle(color: Theme.of(context).primaryColor)),
                  ],
                )
              ],
            ),
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/samantha.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/Sam Wilson.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/greg.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/james.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/john.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/olivia.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/sophia.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/steven.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/andy.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('assets/andrew.jpg'),
              ),
              Positioned(
                right: 1.0,
                bottom: 1.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),

          SizedBox(width: 15.0),
        ],
      ),
    );
  }
}