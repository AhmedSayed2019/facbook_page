import 'package:flutter/material.dart';
import 'package:task/data/model/response/sponsor_model.dart';
import 'package:task/utility/dimensions.dart';


class SponsorWidget extends StatelessWidget {
  List<SponsorModel> sponsorList;

  SponsorWidget({required this.sponsorList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.FONT_SIZE_EXTRA_SMALL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('Sponsored', style: Theme
              .of(context)
              .textTheme
              .caption!
              .copyWith(fontSize: 16, color: Theme
              .of(context)
              .hintColor
          )),

          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: sponsorList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical:  Dimensions.PADDING_SIZE_SMALL ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: Dimensions
                                    .PADDING_SIZE_EXTRA_SMALL),
                            width: 120.0,
                            height:120.0 ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        sponsorList[index].image),
                                    fit: BoxFit.cover)),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft, child: Text(
                                  sponsorList[index].sponsorName, style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),),),

                              Container(
                                  alignment: Alignment.centerLeft, child: Text(

                                  sponsorList[index].link, style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(fontSize: Dimensions.PADDING_SIZE_SMALL,color: Theme.of(context).hintColor),),),
                            ],
                          ),


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


