// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale locale) languageChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale locale)? languageChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale locale)? languageChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangeMdeState value) themeChangeMode,
    required TResult Function(LanguageChangeState value) languageChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult? Function(LanguageChangeState value)? languageChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult Function(LanguageChangeState value)? languageChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale locale) languageChange,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale locale)? languageChange,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale locale)? languageChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangeMdeState value) themeChangeMode,
    required TResult Function(LanguageChangeState value) languageChange,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult? Function(LanguageChangeState value)? languageChange,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult Function(LanguageChangeState value)? languageChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ThemeChangeMdeStateImplCopyWith<$Res> {
  factory _$$ThemeChangeMdeStateImplCopyWith(_$ThemeChangeMdeStateImpl value,
          $Res Function(_$ThemeChangeMdeStateImpl) then) =
      __$$ThemeChangeMdeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$ThemeChangeMdeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ThemeChangeMdeStateImpl>
    implements _$$ThemeChangeMdeStateImplCopyWith<$Res> {
  __$$ThemeChangeMdeStateImplCopyWithImpl(_$ThemeChangeMdeStateImpl _value,
      $Res Function(_$ThemeChangeMdeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$ThemeChangeMdeStateImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeChangeMdeStateImpl
    with DiagnosticableTreeMixin
    implements ThemeChangeMdeState {
  const _$ThemeChangeMdeStateImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.themeChangeMode(isDark: $isDark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.themeChangeMode'))
      ..add(DiagnosticsProperty('isDark', isDark));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangeMdeStateImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangeMdeStateImplCopyWith<_$ThemeChangeMdeStateImpl> get copyWith =>
      __$$ThemeChangeMdeStateImplCopyWithImpl<_$ThemeChangeMdeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale locale) languageChange,
  }) {
    return themeChangeMode(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale locale)? languageChange,
  }) {
    return themeChangeMode?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale locale)? languageChange,
    required TResult orElse(),
  }) {
    if (themeChangeMode != null) {
      return themeChangeMode(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangeMdeState value) themeChangeMode,
    required TResult Function(LanguageChangeState value) languageChange,
  }) {
    return themeChangeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult? Function(LanguageChangeState value)? languageChange,
  }) {
    return themeChangeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult Function(LanguageChangeState value)? languageChange,
    required TResult orElse(),
  }) {
    if (themeChangeMode != null) {
      return themeChangeMode(this);
    }
    return orElse();
  }
}

abstract class ThemeChangeMdeState implements AppState {
  const factory ThemeChangeMdeState({required final bool isDark}) =
      _$ThemeChangeMdeStateImpl;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$ThemeChangeMdeStateImplCopyWith<_$ThemeChangeMdeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LanguageChangeStateImplCopyWith<$Res> {
  factory _$$LanguageChangeStateImplCopyWith(_$LanguageChangeStateImpl value,
          $Res Function(_$LanguageChangeStateImpl) then) =
      __$$LanguageChangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$LanguageChangeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LanguageChangeStateImpl>
    implements _$$LanguageChangeStateImplCopyWith<$Res> {
  __$$LanguageChangeStateImplCopyWithImpl(_$LanguageChangeStateImpl _value,
      $Res Function(_$LanguageChangeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$LanguageChangeStateImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LanguageChangeStateImpl
    with DiagnosticableTreeMixin
    implements LanguageChangeState {
  const _$LanguageChangeStateImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.languageChange(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.languageChange'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageChangeStateImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageChangeStateImplCopyWith<_$LanguageChangeStateImpl> get copyWith =>
      __$$LanguageChangeStateImplCopyWithImpl<_$LanguageChangeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale locale) languageChange,
  }) {
    return languageChange(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale locale)? languageChange,
  }) {
    return languageChange?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale locale)? languageChange,
    required TResult orElse(),
  }) {
    if (languageChange != null) {
      return languageChange(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ThemeChangeMdeState value) themeChangeMode,
    required TResult Function(LanguageChangeState value) languageChange,
  }) {
    return languageChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult? Function(LanguageChangeState value)? languageChange,
  }) {
    return languageChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ThemeChangeMdeState value)? themeChangeMode,
    TResult Function(LanguageChangeState value)? languageChange,
    required TResult orElse(),
  }) {
    if (languageChange != null) {
      return languageChange(this);
    }
    return orElse();
  }
}

abstract class LanguageChangeState implements AppState {
  const factory LanguageChangeState({required final Locale locale}) =
      _$LanguageChangeStateImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$LanguageChangeStateImplCopyWith<_$LanguageChangeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
