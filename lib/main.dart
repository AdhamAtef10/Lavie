import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lavie/bloc/observer/bloc_observer.dart';
import 'package:lavie/src/app_root.dart';

import 'services/dio/dio_services.dart';
import 'services/sheared_preference/shearedprefrence_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  await DioHelper.init();

  BlocOverrides.runZoned(() {
  }, blocObserver: MyBlocObserver());

  runApp(AppRoot());

}
