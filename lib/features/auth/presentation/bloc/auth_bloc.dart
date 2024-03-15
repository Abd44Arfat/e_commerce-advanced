import 'package:ecommerce_advanced/core/service/shared_pref/pref_keys.dart';
import 'package:ecommerce_advanced/core/service/shared_pref/shared_pref.dart';
import 'package:ecommerce_advanced/features/auth/data/models/login_request_body.dart';
import 'package:ecommerce_advanced/features/auth/data/models/login_response.dart';
import 'package:ecommerce_advanced/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repo) : super(_Initial()) {
    on<LoginEvent>(_login);
  }
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthRepos _repo;
  Future<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _repo.login(LoginRequestBody(
      email: emailController.text.trim(),
      password: passwordController.text,
    ));

    await result.when(
      success: (LoginDataModel) async {
//Save access token in prefs
        final token = LoginDataModel.data.login.accessToken??"";
        await SharedPref().setString(
          PrefKeys.accessToken,
      token,
        );
//get user role

    final user=    await _repo.userRole(token);

       SharedPref().setInt(
          PrefKeys.userId,
      user.userId??0,
        );
        emit( AuthState.success(userRole: user.userRole ?? ""));
      },
      failure: (error) {
        emit(AuthState.error(error: error));
      },
    );
  }
}
