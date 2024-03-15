import 'package:ecommerce_advanced/core/app/app_cupit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
await  _initCore();
}

Future <void> _initCore()async {
  sl..registerFactory((AppCubit.new));
}
