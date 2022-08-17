import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lavie/bloc/authentication/authentication_cubit.dart';
import 'package:lavie/screens/blog_screen.dart';
import 'package:lavie/screens/home_screen.dart';
import 'package:lavie/screens/login_screen.dart';
import 'package:lavie/screens/shop_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [

        BlocProvider(create: (BuildContext context) =>AuthenticationCubit()),
      ],
      child:MaterialApp(
        home:LoginScreen(),
        debugShowCheckedModeBanner: false,
    ));
  }
}
