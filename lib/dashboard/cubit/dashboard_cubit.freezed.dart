// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _DashboardState call(
      {DashboardViewEnum currentView = DashboardViewEnum.person,
      required TabController controller,
      String? title,
      String? quote,
      bool isLoading = false,
      bool hasError = false}) {
    return _DashboardState(
      currentView: currentView,
      controller: controller,
      title: title,
      quote: quote,
      isLoading: isLoading,
      hasError: hasError,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  DashboardViewEnum get currentView => throw _privateConstructorUsedError;
  TabController get controller => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get quote => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {DashboardViewEnum currentView,
      TabController controller,
      String? title,
      String? quote,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? currentView = freezed,
    Object? controller = freezed,
    Object? title = freezed,
    Object? quote = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      currentView: currentView == freezed
          ? _value.currentView
          : currentView // ignore: cast_nullable_to_non_nullable
              as DashboardViewEnum,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TabController,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DashboardViewEnum currentView,
      TabController controller,
      String? title,
      String? quote,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object? currentView = freezed,
    Object? controller = freezed,
    Object? title = freezed,
    Object? quote = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_DashboardState(
      currentView: currentView == freezed
          ? _value.currentView
          : currentView // ignore: cast_nullable_to_non_nullable
              as DashboardViewEnum,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TabController,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {this.currentView = DashboardViewEnum.person,
      required this.controller,
      this.title,
      this.quote,
      this.isLoading = false,
      this.hasError = false});

  @JsonKey(defaultValue: DashboardViewEnum.person)
  @override
  final DashboardViewEnum currentView;
  @override
  final TabController controller;
  @override
  final String? title;
  @override
  final String? quote;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool hasError;

  @override
  String toString() {
    return 'DashboardState(currentView: $currentView, controller: $controller, title: $title, quote: $quote, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardState &&
            (identical(other.currentView, currentView) ||
                other.currentView == currentView) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.quote, quote) || other.quote == quote) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentView, controller, title, quote, isLoading, hasError);

  @JsonKey(ignore: true)
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {DashboardViewEnum currentView,
      required TabController controller,
      String? title,
      String? quote,
      bool isLoading,
      bool hasError}) = _$_DashboardState;

  @override
  DashboardViewEnum get currentView;
  @override
  TabController get controller;
  @override
  String? get title;
  @override
  String? get quote;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
