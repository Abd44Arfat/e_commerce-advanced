import 'package:ecommerce_advanced/core/app/app_cupit/app_cubit.dart';
import 'package:ecommerce_advanced/core/service/graphql/api_service.dart';
import 'package:ecommerce_advanced/core/service/graphql/dio_factory.dart';
import 'package:ecommerce_advanced/features/auth/data/datasources/auth_data_source.dart';
import 'package:ecommerce_advanced/features/auth/data/repos/auth_repo.dart';
import 'package:ecommerce_advanced/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  sl
    ..registerFactory(AppCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio));
}

/// Initializes the Auth module by registering dependencies in the [sl] object.
///
/// This function registers the [AuthBloc] as a factory, and registers the
/// [AuthRepos] and [AuthDataSource] as lazy singletons.
///
/// This function does not return anything.
Future<void> _initAuth() async {
  // Registers the AuthBloc as a factory in the sl object.
  sl.registerFactory(
    // Instantiates a new AuthBloc with the sl object as a parameter.
    () => AuthBloc(sl()),
  );

  // Registers the AuthRepos as a lazy singleton in the sl object.
  // The AuthRepos is instantiated with the sl object as a parameter.
  sl.registerLazySingleton<AuthRepos>(() => AuthRepos(sl()));

  // Registers the AuthDataSource as a lazy singleton in the sl object.
  // The AuthDataSource is instantiated with the sl object as a parameter.
  sl.registerLazySingleton<AuthDataSource>(
    () => AuthDataSource(sl()),
  );
}
