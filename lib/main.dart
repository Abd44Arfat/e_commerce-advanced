import 'package:ecommerce_advanced/core/app/bloc_observer.dart';
import 'package:ecommerce_advanced/core/app/env.varibles.dart';
import 'package:ecommerce_advanced/core/di/injection_container.dart';
import 'package:ecommerce_advanced/core/service/shared_pref/shared_pref.dart';
import 'package:ecommerce_advanced/e_commerce_app.dart';
import 'package:ecommerce_advanced/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await SharedPref().instantiatePreferences();

  await setupInjector();
  Bloc.observer = AppBlocObserver();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then(
    (_) => {
      runApp(const MyApp()),
    },
  );
}
