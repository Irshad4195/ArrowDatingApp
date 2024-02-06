//import 'package:arrow_dating_app/blocs/swipe/swipe_bloc.dart';
import 'package:arrow_dating_app/config/theme.dart';
import 'package:arrow_dating_app/home_screen.dart';
//import 'package:arrow_dating_app/models/user_model.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        /* MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SwipeBloc()..add(LoadUsersEvent(users: User.users)),
        )
      ],
      child: */
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      /*ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),*/
      home: HomeScreen(),
    );
    //);
  }
}
