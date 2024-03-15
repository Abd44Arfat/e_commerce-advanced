part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.themeChangeMode({required bool isDark})=ThemeChangeMdeState;
    const factory AppState.languageChange({required Locale locale})=LanguageChangeState;
}
