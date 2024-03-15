
import 'package:dio/dio.dart';
import 'package:ecommerce_advanced/features/auth/data/models/login_response.dart';
import 'package:ecommerce_advanced/features/auth/data/models/user_role_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

const String baseUrl = 'https://api.escuelajs.co';
const String graphql = '/graphql';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
@POST(graphql)
Future <LoginResponse> Login(
@Body() Map<String, dynamic>mutation,
);

  @GET('/api/v1/auth/profile')
  Future<UserRoleResponse> userRole();

}
