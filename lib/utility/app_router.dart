
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/post_bloc.dart';
import 'package:task/view/screens/home_screen.dart';

class AppRouter {
  //
  static const characters = '/';



  late PostCubit postCubit;

  AppRouter() {
    postCubit = PostCubit();
  }

  Route? setupRouter(RouteSettings settings) {
    switch (settings.name) {
      case characters:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => postCubit,
            child: HomeScreen(),
          ),
        );
    }
  }
}
