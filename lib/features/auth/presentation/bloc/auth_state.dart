part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = LoadingAuthState;
  const factory AuthState.error({required String error}) = ErrorAuthState;
  const factory AuthState.success({required String userRole}) = SuccessAuthState;

}
