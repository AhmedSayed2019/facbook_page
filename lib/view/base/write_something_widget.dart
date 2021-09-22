import 'package:flutter/material.dart';
import 'package:task/utility/color_resources.dart';
import 'package:task/utility/dimensions.dart';

class WriteSomethingWidget extends StatelessWidget {
  const WriteSomethingWidget({Key? key}) : super(key: key);

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
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  const CircleAvatar(
                  radius: 28.0,
                  backgroundImage: NetworkImage("https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp",),

                ),

                const  SizedBox(width: 7.0),

                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    height: 40.0,

                    decoration: BoxDecoration(
                      color: ColorResources.colorGrayLite,
                      border: Border.all(
                        width: 1.0,
                        color:ColorResources.colorGrayLite
                      ),
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    child:const Text('Write something here...'),
                  ),
                )
              ],
            ),
          ),

          const Divider(),

          Container(
            margin:const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const  Icon(Icons.live_tv, size: 20.0, color: Colors.pink,),
                    const  SizedBox(width: 5.0,),
                    Text('Live', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16.0)),
                  ],
                ),
                Row(
                  children:  <Widget>[
                    const  Icon(Icons.photo_library, size: 20.0, color: Colors.green,),
                    const SizedBox(width: 5.0),
                    Text('Photo', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16.0)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Icon(Icons.video_call, size: 20.0, color: Colors.purple,),
                    const SizedBox(width: 5.0,),
                    Text('Room', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16.0)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}