import 'package:flutter/material.dart';
import 'package:task/data/model/response/home_model.dart';

class GroupWidget extends StatelessWidget {
    List<GroupModel> groupList ;

    GroupWidget({required this.groupList});

    @override
  Widget build(BuildContext context) {
    return Container(

      child: Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          itemCount: groupList.length,
          itemBuilder: (context, index) {
            return  InkWell(
              borderRadius:    BorderRadius.circular(10.0),
              onTap: (){},
              child: Container(
                child: Row(
                  children: [
                    _AvatarImage(groupList[index].groupImage ),

                    Container( alignment:Alignment.centerLeft,child: Text(groupList[index].groupName , style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 16))),


                  ],
                ),
              ),
            );
          }

        ),
      ),
    );
  }
}

class _AvatarImage extends StatelessWidget{

  final String profileAvatarImage;


  _AvatarImage(this.profileAvatarImage );

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
              ),
            )
          ]
      ),
    );
  }

}