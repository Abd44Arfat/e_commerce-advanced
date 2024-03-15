import 'package:ecommerce_advanced/core/language/lang_keys.dart';
import 'package:ecommerce_advanced/core/service/graphql/api_result.dart';
import 'package:ecommerce_advanced/features/auth/data/datasources/auth_data_source.dart';
import 'package:ecommerce_advanced/features/auth/data/models/login_request_body.dart';
import 'package:ecommerce_advanced/features/auth/data/models/login_response.dart';
import 'package:ecommerce_advanced/features/auth/data/models/user_role_response.dart';

class AuthRepos {
  const AuthRepos(this._dataSource);

  final AuthDataSource _dataSource;

  //login
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      final response = await _dataSource.login(body: body);

      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(LangKeys.loggedError);
    }
  }

  Future<UserRoleResponse> userRole(String token) async {
    final response = await _dataSource.userRole(token);
    return response;
  }
}
