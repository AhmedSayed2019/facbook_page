import 'package:flutter/material.dart';
import 'package:task/data/model/response/home_model.dart';


class StoriesWidget extends StatelessWidget {
  List<StoryModel> storyList = [];

  StoriesWidget({required this.storyList});

  @override
  Widget build(BuildContext context) {
    return Container(height:  220.0,
      child: ListView.builder(
          itemCount: storyList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 100.0,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(index == 0
                        ? "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"
                        : storyList[index].storyImage),
                    fit: BoxFit.cover),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.1),
                    ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    index == 0
                        ? Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.white, width: 2),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color(0xFF1777F2),
                            ),
                          )
                        : Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        storyList[index].userImage),
                                    fit: BoxFit.cover)),
                          ),
                    Text(
                      storyList[index].userName,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
