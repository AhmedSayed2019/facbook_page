import 'package:flutter/material.dart';
import 'package:task/data/model/response/home_model.dart';
import 'package:task/utility/dimensions.dart';

import 'avatar_image.dart';

class ContactWidget extends StatelessWidget {
    List<UserModel> contactList ;

    ContactWidget({required this.contactList});

    @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all( Dimensions.FONT_SIZE_EXTRA_SMALL),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container( alignment:Alignment.centerLeft,child: Text('Contacts' , style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16,color: Theme.of(context).hintColor) ),),

              Row(
                children: [

                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 25.0,
                    color: Theme.of(context).hintColor,
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 25.0,
                    color: Theme.of(context).hintColor,
                    onPressed: (){},
                  ),

                ],
              ),



            ],
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              itemCount: contactList.length,
              itemBuilder: (context, index) {
                return  InkWell(
                  borderRadius:    BorderRadius.circular(10.0),
                  onTap: (){},
                  child: Container(
                    child: Row(
                      children: [
                        AvatarImage(contactList[index].image , contactList[index].isConnected),

                        Container( alignment:Alignment.centerLeft,child: Text(contactList[index].userName , style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 16))),
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

