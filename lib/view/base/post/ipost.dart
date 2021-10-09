import 'package:flutter/cupertino.dart';
import 'package:task/data/model/response/home_model.dart';

abstract class IPost {
  Widget buildPost(BuildContext context, PostModel post);
}
