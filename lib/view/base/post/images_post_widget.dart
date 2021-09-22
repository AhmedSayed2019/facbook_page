import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/data/model/response/post_model.dart';
import 'package:task/utility/color_resources.dart';
import 'package:task/utility/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../avatar_image.dart';
import '../custom_text_field.dart';

class ImagesPostWidget extends StatelessWidget {
  final Post post;

  ImagesPostWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImageUrl),
                radius: 20.0,
              ),
              const SizedBox(width: 7.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.username,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0)),
                  const SizedBox(height: 5.0),
                  Row(
                    children: [
                      Text(post.time),
                      Icon(
                        Icons.public,
                        color: ColorResources.colorGrayLite,
                        size: 12.0,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),

          const SizedBox(height: 20.0),

          Text(post.content, style: const TextStyle(fontSize: 15.0)),
          CarouselDemo(post.images),
          // CarouselSlider(
          //   options: CarouselOptions(height: 400.0),
          //   items: post.images.map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //           width: MediaQuery.of(context).size.width,
          //           margin: EdgeInsets.symmetric(horizontal: 5.0),
          //           child:Image.network(i),
          //         );
          //       },
          //     );
          //   }).toList(),
          // ),
          const SizedBox(height: 10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(Images.like_icon, width: 15.0, height: 15.0),
                  Text(' ${post.likes}'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('${post.comments} comments  •  '),
                  Text('${post.shares} shares'),
                ],
              ),
            ],
          ),

          const Divider(height: 30.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Like', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Comment', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.share, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Share', style: TextStyle(fontSize: 14.0)),
                ],
              ),
            ],
          ),
          const Divider(height: 30.0),
          Container(
            height: 50,
            child: Row(
              children: [
                AvatarImage("https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp" ,false),
                Expanded(
                  child: CustomTextField(
                    hintText: "Write a comment…",
                    fillColor: Theme.of(context).backgroundColor,
                    isShowBorder: true,
                    inputType: TextInputType.text,
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  List<String> images;

  CarouselDemo(this.images);

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        Stack(
          children: [
            CarouselSlider(
              items: images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.network(i),
                    );
                  },
                );
              }).toList(),
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
          ],
        ),
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Color(0xFFe6eef5),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 24,
                  color: Colors.black,
                  onPressed: () => buttonCarouselController.previousPage(
                      duration: Duration(milliseconds: 300), curve: Curves.linear),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Color(0xFFe6eef5),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined),
                  iconSize: 24,
                  color: Colors.black,
                  onPressed: () => buttonCarouselController.nextPage(
                      duration: Duration(milliseconds: 300), curve: Curves.linear),
                ),
              )
            ],
          ),
        ),

        // IconButton(
        //   onPressed: () => buttonCarouselController.nextPage(
        //       duration: Duration(milliseconds: 300), curve: Curves.linear),
        //   icon: Icon(Icons.arrow_back_ios),
        // ),
      ]);
}
//'→'
