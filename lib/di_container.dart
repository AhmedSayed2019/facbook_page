

import 'package:get_it/get_it.dart';
import 'package:task/bloc/post_bloc.dart';


final sl = GetIt.instance;

Future<void> init() async {
  // Core

  // Repository

  // Bloc
  sl.registerFactory(() => PostCubit());

}
