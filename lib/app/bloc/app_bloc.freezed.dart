// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _AppUserChanged loginEmailChanged(User user) {
    return _AppUserChanged(
      user,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  User get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) loginEmailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? loginEmailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? loginEmailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserChanged value) loginEmailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? loginEmailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? loginEmailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppEventCopyWith<AppEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
abstract class _$AppUserChangedCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$AppUserChangedCopyWith(
          _AppUserChanged value, $Res Function(_AppUserChanged) then) =
      __$AppUserChangedCopyWithImpl<$Res>;
  @override
  $Res call({User user});
}

/// @nodoc
class __$AppUserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$AppUserChangedCopyWith<$Res> {
  __$AppUserChangedCopyWithImpl(
      _AppUserChanged _value, $Res Function(_AppUserChanged) _then)
      : super(_value, (v) => _then(v as _AppUserChanged));

  @override
  _AppUserChanged get _value => super._value as _AppUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_AppUserChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AppUserChanged implements _AppUserChanged {
  const _$_AppUserChanged(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.loginEmailChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUserChanged &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  _$AppUserChangedCopyWith<_AppUserChanged> get copyWith =>
      __$AppUserChangedCopyWithImpl<_AppUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) loginEmailChanged,
  }) {
    return loginEmailChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? loginEmailChanged,
  }) {
    return loginEmailChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? loginEmailChanged,
    required TResult orElse(),
  }) {
    if (loginEmailChanged != null) {
      return loginEmailChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppUserChanged value) loginEmailChanged,
  }) {
    return loginEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? loginEmailChanged,
  }) {
    return loginEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppUserChanged value)? loginEmailChanged,
    required TResult orElse(),
  }) {
    if (loginEmailChanged != null) {
      return loginEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _AppUserChanged implements AppEvent {
  const factory _AppUserChanged(User user) = _$_AppUserChanged;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$AppUserChangedCopyWith<_AppUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _Authenticated authenticated(
      {User? user, AppStatus appStatus = AppStatus.authenticated}) {
    return _Authenticated(
      user: user,
      appStatus: appStatus,
    );
  }

  _UnAuthenticated unauthenticated(
      [AppStatus appStatus = AppStatus.authenticated, User user = User.empty]) {
    return _UnAuthenticated(
      appStatus,
      user,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AppStatus get appStatus => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, AppStatus appStatus) authenticated,
    required TResult Function(AppStatus appStatus, User user) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, AppStatus appStatus)? authenticated,
    TResult Function(AppStatus appStatus, User user)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, AppStatus appStatus)? authenticated,
    TResult Function(AppStatus appStatus, User user)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({AppStatus appStatus});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? appStatus = freezed,
  }) {
    return _then(_value.copyWith(
      appStatus: appStatus == freezed
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({User? user, AppStatus appStatus});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? appStatus = freezed,
  }) {
    return _then(_Authenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      appStatus: appStatus == freezed
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated({this.user, this.appStatus = AppStatus.authenticated});

  @override
  final User? user;
  @JsonKey(defaultValue: AppStatus.authenticated)
  @override
  final AppStatus appStatus;

  @override
  String toString() {
    return 'AppState.authenticated(user: $user, appStatus: $appStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.appStatus, appStatus) ||
                other.appStatus == appStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, appStatus);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, AppStatus appStatus) authenticated,
    required TResult Function(AppStatus appStatus, User user) unauthenticated,
  }) {
    return authenticated(user, appStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, AppStatus appStatus)? authenticated,
    TResult Function(AppStatus appStatus, User user)? unauthenticated,
  }) {
    return authenticated?.call(user, appStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, AppStatus appStatus)? authenticated,
    TResult Function(AppStatus appStatus, User user)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, appStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AppState {
  const factory _Authenticated({User? user, AppStatus appStatus}) =
      _$_Authenticated;

  User? get user;
  @override
  AppStatus get appStatus;
  @override
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnAuthenticatedCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$UnAuthenticatedCopyWith(
          _UnAuthenticated value, $Res Function(_UnAuthenticated) then) =
      __$UnAuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus appStatus, User user});
}

/// @nodoc
class __$UnAuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$UnAuthenticatedCopyWith<$Res> {
  __$UnAuthenticatedCopyWithImpl(
      _UnAuthenticated _value, $Res Function(_UnAuthenticated) _then)
      : super(_value, (v) => _then(v as _UnAuthenticated));

  @override
  _UnAuthenticated get _value => super._value as _UnAuthenticated;

  @override
  $Res call({
    Object? appStatus = freezed,
    Object? user = freezed,
  }) {
    return _then(_UnAuthenticated(
      appStatus == freezed
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated(
      [this.appStatus = AppStatus.authenticated, this.user = User.empty]);

  @JsonKey(defaultValue: AppStatus.authenticated)
  @override
  final AppStatus appStatus;
  @JsonKey(defaultValue: User.empty)
  @override
  final User user;

  @override
  String toString() {
    return 'AppState.unauthenticated(appStatus: $appStatus, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnAuthenticated &&
            (identical(other.appStatus, appStatus) ||
                other.appStatus == appStatus) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appStatus, user);

  @JsonKey(ignore: true)
  @override
  _$UnAuthenticatedCopyWith<_UnAuthenticated> get copyWith =>
      __$UnAuthenticatedCopyWithImpl<_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, AppStatus appStatus) authenticated,
    required TResult Function(AppStatus appStatus, User user) unauthenticated,
  }) {
    return unauthenticated(appStatus, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user, AppStatus appStatus)? authenticated,
    TResult Function(AppStatus appStatus, User user)? unauthenticated,
  }) {
    return unauthenticated?.call(appStatus, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, AppStatus appStatus)? authenticated,
    TResult Function(AppStatus appStatus, User user)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(appStatus, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AppState {
  const factory _UnAuthenticated([AppStatus appStatus, User user]) =
      _$_UnAuthenticated;

  @override
  AppStatus get appStatus;
  User get user;
  @override
  @JsonKey(ignore: true)
  _$UnAuthenticatedCopyWith<_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
