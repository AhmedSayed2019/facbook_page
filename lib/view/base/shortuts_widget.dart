import 'package:flutter/material.dart';
import 'package:task/data/model/response/home_model.dart';

import 'avatar_image.dart';

class ShortcutsWidget extends StatelessWidget {
    List<GroupModel> shortcutsList ;

    ShortcutsWidget({required this.shortcutsList});

    @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('Your shortcuts' , style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16,color: Theme.of(context).hintColor)),

          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              itemCount: shortcutsList.length,
              itemBuilder: (context, index) {
                return  InkWell(
                  borderRadius:    BorderRadius.circular(10.0),
                  onTap: (){},
                  child: Container(
                    child: Row(
                      children: [
                        AvatarImage(shortcutsList[index].groupImage ,false),
                        Container( alignment:Alignment.centerLeft,child: Text(shortcutsList[index].groupName , style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 16))),
                      ],
                    ),
                  ),
                );
              }

            ),
          ),
        ],
      ),
    );
  }
}

