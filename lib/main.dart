import 'package:flutter/material.dart';
import 'package:task/bloc/post_bloc.dart';
import 'package:task/theme/light_theme.dart';
import 'package:task/view/screens/home_screen.dart';
import 'di_container.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(MyApp(
//     appRouter: AppRouter(),
//   ));
// }

Future<void> main() async {
  // await GetStorage.init('transit_storage');
  // await Firebase.initializeApp();
  await di.init();


  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>(create: (context) => di.sl<PostCubit>(),),
      ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // final AppRouter appRouter;
  //
  // MyApp(
  //     {required this.appRouter}); // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'facebook_ui_flutter',
    //   debugShowCheckedModeBanner: false,
    //   onGenerateRoute: appRouter.setupRouter,
    //   theme: lightTheme,
    // );
    return  MaterialApp(

    theme:  lightTheme,
    title: 'facebook_ui_flutter',
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    );
  }
}
