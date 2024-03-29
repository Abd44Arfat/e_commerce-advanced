import 'package:ecommerce_advanced/core/app/app_cupit/app_cubit.dart';
import 'package:ecommerce_advanced/core/app/connectivity_controller.dart';
import 'package:ecommerce_advanced/core/app/env.varibles.dart';
import 'package:ecommerce_advanced/core/common/screens/no_network_screen.dart';
import 'package:ecommerce_advanced/core/common/style/fonts/font_family_helper.dart';
import 'package:ecommerce_advanced/core/common/style/fonts/font_weight_helper.dart';
import 'package:ecommerce_advanced/core/common/style/theme/app_theme.dart';
import 'package:ecommerce_advanced/core/di/injection_container.dart';
import 'package:ecommerce_advanced/core/language/app_localizations.dart';
import 'package:ecommerce_advanced/core/language/app_localizations_setup.dart';
import 'package:ecommerce_advanced/core/routes/app_routes.dart';
import 'package:ecommerce_advanced/core/service/shared_pref/pref_keys.dart';
import 'package:ecommerce_advanced/core/service/shared_pref/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeAppThemeMode(
              sharedMode:   SharedPref().getBoolean(PrefKeys.themeMode),
              )..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                }  ,         
                 
                     builder: (context,state) {
                      final cubit=context.read<AppCubit>();
                       return MaterialApp(
                        locale: Locale(cubit.currentLangCode),
                        supportedLocales: AppLocalizationsSetup.supportedLocales,
                        localizationsDelegates:
                            AppLocalizationsSetup.localizationsDelegates,
                        localeResolutionCallback:
                            AppLocalizationsSetup.localeResolutionCallback,
                        title: 'Asroo Store',
                        debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                        theme:cubit.isDark? themeLight():themeDark(),
                        builder: (context, widget) {
                          return GestureDetector(
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Scaffold(
                              body: Builder(
                                builder: (context) {
                                  ConnectivityController.instance.init();
                                  return widget!;
                                },
                              ),
                            ),
                          );
                        },
                        onGenerateRoute: AppRoutes.onGenerateRoute,
                        initialRoute: AppRoutes.login,
                                         );
                     
                   
                
                })));
            
          
        } else {
          return MaterialApp(
            title: 'No NetWork ',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}
