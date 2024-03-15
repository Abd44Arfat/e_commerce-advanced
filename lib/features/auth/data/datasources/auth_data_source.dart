import 'package:dio/dio.dart';
import 'package:ecommerce_advanced/core/service/graphql/api_service.dart';
import 'package:ecommerce_advanced/core/service/graphql/qraphql_queries/auth/auth_queries.dart';
import 'package:ecommerce_advanced/features/auth/data/models/login_request_body.dart';
import 'package:ecommerce_advanced/features/auth/data/models/login_response.dart';
import 'package:ecommerce_advanced/features/auth/data/models/user_role_response.dart';
import 'package:flutter/material.dart';

class AuthDataSource {
  const AuthDataSource(this._grapphql);

  final ApiService _grapphql;

  //login
  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response =
        await _grapphql.Login(AuthQueries().loginMapQuery(body: body));
    return response;
  }


  //UserRole
  Future<UserRoleResponse> userRole(String token) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiService(dio);
    final response = await client.userRole();
    debugPrint('User Role => ${response.userRole}');
    return response;
  }

}
