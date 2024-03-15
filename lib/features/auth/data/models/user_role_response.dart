

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_role_response.g.dart';
@JsonSerializable()
class UserRoleResponse {
  UserRoleResponse(this.Userrole);
 @JsonKey(name: 'role')
  final String? Userrole;
  factory UserRoleResponse.fromJson(Map<String, dynamic> json) =>_UserRoleResponseFromJson(json);
}
