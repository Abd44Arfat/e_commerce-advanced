import 'package:ecommerce_advanced/core/app/app_cupit/app_cubit.dart';
import 'package:ecommerce_advanced/core/service/graphql/api_service.dart';
import 'package:ecommerce_advanced/core/service/graphql/dio_factory.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  sl..registerFactory((AppCubit.new))
  ..registerLazySingleton<ApiService>(() => ApiService(dio));
}
