import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lavie/bloc/authentication/authentication_cubit.dart';
import 'package:lavie/bloc/blog/blog_cubit.dart';
import 'package:lavie/bloc/products/products_cubit.dart';
import 'package:lavie/screens/blog_screen.dart';
import 'package:lavie/screens/home_screen.dart';
import 'package:lavie/screens/login_screen.dart';
import 'package:lavie/screens/shop_screen.dart';
import 'package:lavie/screens/single_blog_screen.dart';
import 'package:lavie/services/sheared_preference/shearedprefrence_services.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(create: (BuildContext context) =>AuthenticationCubit()),
        BlocProvider(create: (BuildContext context) =>BlogCubit()..getBlogData()),
        BlocProvider(create: (BuildContext context) =>ProductsCubit()..getProducts()),
      ],
      child:MaterialApp(
        home:LoginScreen(),//SharedPreferencesHelper.getData(key: 'token')==null?LoginScreen():HomeScreen(),
        debugShowCheckedModeBanner: false,
    ));
  }
}
