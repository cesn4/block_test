// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calculation_sheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalculationSheet _$CalculationSheetFromJson(Map<String, dynamic> json) {
  return _CalculationSheet.fromJson(json);
}

/// @nodoc
class _$CalculationSheetTearOff {
  const _$CalculationSheetTearOff();

  _CalculationSheet call(
      {required String title,
      required List<CalculationSheetInput> inputs,
      num? overall_score}) {
    return _CalculationSheet(
      title: title,
      inputs: inputs,
      overall_score: overall_score,
    );
  }

  CalculationSheet fromJson(Map<String, Object?> json) {
    return CalculationSheet.fromJson(json);
  }
}

/// @nodoc
const $CalculationSheet = _$CalculationSheetTearOff();

/// @nodoc
mixin _$CalculationSheet {
  String get title => throw _privateConstructorUsedError;
  List<CalculationSheetInput> get inputs => throw _privateConstructorUsedError;
  num? get overall_score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationSheetCopyWith<CalculationSheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationSheetCopyWith<$Res> {
  factory $CalculationSheetCopyWith(
          CalculationSheet value, $Res Function(CalculationSheet) then) =
      _$CalculationSheetCopyWithImpl<$Res>;
  $Res call(
      {String title, List<CalculationSheetInput> inputs, num? overall_score});
}

/// @nodoc
class _$CalculationSheetCopyWithImpl<$Res>
    implements $CalculationSheetCopyWith<$Res> {
  _$CalculationSheetCopyWithImpl(this._value, this._then);

  final CalculationSheet _value;
  // ignore: unused_field
  final $Res Function(CalculationSheet) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? inputs = freezed,
    Object? overall_score = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<CalculationSheetInput>,
      overall_score: overall_score == freezed
          ? _value.overall_score
          : overall_score // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$CalculationSheetCopyWith<$Res>
    implements $CalculationSheetCopyWith<$Res> {
  factory _$CalculationSheetCopyWith(
          _CalculationSheet value, $Res Function(_CalculationSheet) then) =
      __$CalculationSheetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, List<CalculationSheetInput> inputs, num? overall_score});
}

/// @nodoc
class __$CalculationSheetCopyWithImpl<$Res>
    extends _$CalculationSheetCopyWithImpl<$Res>
    implements _$CalculationSheetCopyWith<$Res> {
  __$CalculationSheetCopyWithImpl(
      _CalculationSheet _value, $Res Function(_CalculationSheet) _then)
      : super(_value, (v) => _then(v as _CalculationSheet));

  @override
  _CalculationSheet get _value => super._value as _CalculationSheet;

  @override
  $Res call({
    Object? title = freezed,
    Object? inputs = freezed,
    Object? overall_score = freezed,
  }) {
    return _then(_CalculationSheet(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<CalculationSheetInput>,
      overall_score: overall_score == freezed
          ? _value.overall_score
          : overall_score // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculationSheet implements _CalculationSheet {
  _$_CalculationSheet(
      {required this.title, required this.inputs, this.overall_score});

  factory _$_CalculationSheet.fromJson(Map<String, dynamic> json) =>
      _$$_CalculationSheetFromJson(json);

  @override
  final String title;
  @override
  final List<CalculationSheetInput> inputs;
  @override
  final num? overall_score;

  @override
  String toString() {
    return 'CalculationSheet(title: $title, inputs: $inputs, overall_score: $overall_score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculationSheet &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.inputs, inputs) &&
            (identical(other.overall_score, overall_score) ||
                other.overall_score == overall_score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(inputs), overall_score);

  @JsonKey(ignore: true)
  @override
  _$CalculationSheetCopyWith<_CalculationSheet> get copyWith =>
      __$CalculationSheetCopyWithImpl<_CalculationSheet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculationSheetToJson(this);
  }
}

abstract class _CalculationSheet implements CalculationSheet {
  factory _CalculationSheet(
      {required String title,
      required List<CalculationSheetInput> inputs,
      num? overall_score}) = _$_CalculationSheet;

  factory _CalculationSheet.fromJson(Map<String, dynamic> json) =
      _$_CalculationSheet.fromJson;

  @override
  String get title;
  @override
  List<CalculationSheetInput> get inputs;
  @override
  num? get overall_score;
  @override
  @JsonKey(ignore: true)
  _$CalculationSheetCopyWith<_CalculationSheet> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculationSheetInput _$CalculationSheetInputFromJson(
    Map<String, dynamic> json) {
  return _CalculationSheetInput.fromJson(json);
}

/// @nodoc
class _$CalculationSheetInputTearOff {
  const _$CalculationSheetInputTearOff();

  _CalculationSheetInput call(
      {required String id,
      required String type,
      required num default_multiplier,
      required String label,
      required String action,
      required List<CalculationSheetInputDependency> dependencies,
      List<CalculationSheetInputAnswer>? asnwers,
      num? input_value}) {
    return _CalculationSheetInput(
      id: id,
      type: type,
      default_multiplier: default_multiplier,
      label: label,
      action: action,
      dependencies: dependencies,
      asnwers: asnwers,
      input_value: input_value,
    );
  }

  CalculationSheetInput fromJson(Map<String, Object?> json) {
    return CalculationSheetInput.fromJson(json);
  }
}

/// @nodoc
const $CalculationSheetInput = _$CalculationSheetInputTearOff();

/// @nodoc
mixin _$CalculationSheetInput {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  num get default_multiplier => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  List<CalculationSheetInputDependency> get dependencies =>
      throw _privateConstructorUsedError;
  List<CalculationSheetInputAnswer>? get asnwers =>
      throw _privateConstructorUsedError;
  num? get input_value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationSheetInputCopyWith<CalculationSheetInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationSheetInputCopyWith<$Res> {
  factory $CalculationSheetInputCopyWith(CalculationSheetInput value,
          $Res Function(CalculationSheetInput) then) =
      _$CalculationSheetInputCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String type,
      num default_multiplier,
      String label,
      String action,
      List<CalculationSheetInputDependency> dependencies,
      List<CalculationSheetInputAnswer>? asnwers,
      num? input_value});
}

/// @nodoc
class _$CalculationSheetInputCopyWithImpl<$Res>
    implements $CalculationSheetInputCopyWith<$Res> {
  _$CalculationSheetInputCopyWithImpl(this._value, this._then);

  final CalculationSheetInput _value;
  // ignore: unused_field
  final $Res Function(CalculationSheetInput) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? default_multiplier = freezed,
    Object? label = freezed,
    Object? action = freezed,
    Object? dependencies = freezed,
    Object? asnwers = freezed,
    Object? input_value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      default_multiplier: default_multiplier == freezed
          ? _value.default_multiplier
          : default_multiplier // ignore: cast_nullable_to_non_nullable
              as num,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: dependencies == freezed
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<CalculationSheetInputDependency>,
      asnwers: asnwers == freezed
          ? _value.asnwers
          : asnwers // ignore: cast_nullable_to_non_nullable
              as List<CalculationSheetInputAnswer>?,
      input_value: input_value == freezed
          ? _value.input_value
          : input_value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$CalculationSheetInputCopyWith<$Res>
    implements $CalculationSheetInputCopyWith<$Res> {
  factory _$CalculationSheetInputCopyWith(_CalculationSheetInput value,
          $Res Function(_CalculationSheetInput) then) =
      __$CalculationSheetInputCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String type,
      num default_multiplier,
      String label,
      String action,
      List<CalculationSheetInputDependency> dependencies,
      List<CalculationSheetInputAnswer>? asnwers,
      num? input_value});
}

/// @nodoc
class __$CalculationSheetInputCopyWithImpl<$Res>
    extends _$CalculationSheetInputCopyWithImpl<$Res>
    implements _$CalculationSheetInputCopyWith<$Res> {
  __$CalculationSheetInputCopyWithImpl(_CalculationSheetInput _value,
      $Res Function(_CalculationSheetInput) _then)
      : super(_value, (v) => _then(v as _CalculationSheetInput));

  @override
  _CalculationSheetInput get _value => super._value as _CalculationSheetInput;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? default_multiplier = freezed,
    Object? label = freezed,
    Object? action = freezed,
    Object? dependencies = freezed,
    Object? asnwers = freezed,
    Object? input_value = freezed,
  }) {
    return _then(_CalculationSheetInput(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      default_multiplier: default_multiplier == freezed
          ? _value.default_multiplier
          : default_multiplier // ignore: cast_nullable_to_non_nullable
              as num,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: dependencies == freezed
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<CalculationSheetInputDependency>,
      asnwers: asnwers == freezed
          ? _value.asnwers
          : asnwers // ignore: cast_nullable_to_non_nullable
              as List<CalculationSheetInputAnswer>?,
      input_value: input_value == freezed
          ? _value.input_value
          : input_value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculationSheetInput implements _CalculationSheetInput {
  _$_CalculationSheetInput(
      {required this.id,
      required this.type,
      required this.default_multiplier,
      required this.label,
      required this.action,
      required this.dependencies,
      this.asnwers,
      this.input_value});

  factory _$_CalculationSheetInput.fromJson(Map<String, dynamic> json) =>
      _$$_CalculationSheetInputFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final num default_multiplier;
  @override
  final String label;
  @override
  final String action;
  @override
  final List<CalculationSheetInputDependency> dependencies;
  @override
  final List<CalculationSheetInputAnswer>? asnwers;
  @override
  final num? input_value;

  @override
  String toString() {
    return 'CalculationSheetInput(id: $id, type: $type, default_multiplier: $default_multiplier, label: $label, action: $action, dependencies: $dependencies, asnwers: $asnwers, input_value: $input_value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculationSheetInput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.default_multiplier, default_multiplier) ||
                other.default_multiplier == default_multiplier) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other.dependencies, dependencies) &&
            const DeepCollectionEquality().equals(other.asnwers, asnwers) &&
            (identical(other.input_value, input_value) ||
                other.input_value == input_value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      default_multiplier,
      label,
      action,
      const DeepCollectionEquality().hash(dependencies),
      const DeepCollectionEquality().hash(asnwers),
      input_value);

  @JsonKey(ignore: true)
  @override
  _$CalculationSheetInputCopyWith<_CalculationSheetInput> get copyWith =>
      __$CalculationSheetInputCopyWithImpl<_CalculationSheetInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculationSheetInputToJson(this);
  }
}

abstract class _CalculationSheetInput implements CalculationSheetInput {
  factory _CalculationSheetInput(
      {required String id,
      required String type,
      required num default_multiplier,
      required String label,
      required String action,
      required List<CalculationSheetInputDependency> dependencies,
      List<CalculationSheetInputAnswer>? asnwers,
      num? input_value}) = _$_CalculationSheetInput;

  factory _CalculationSheetInput.fromJson(Map<String, dynamic> json) =
      _$_CalculationSheetInput.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  num get default_multiplier;
  @override
  String get label;
  @override
  String get action;
  @override
  List<CalculationSheetInputDependency> get dependencies;
  @override
  List<CalculationSheetInputAnswer>? get asnwers;
  @override
  num? get input_value;
  @override
  @JsonKey(ignore: true)
  _$CalculationSheetInputCopyWith<_CalculationSheetInput> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculationSheetInputDependency _$CalculationSheetInputDependencyFromJson(
    Map<String, dynamic> json) {
  return _CalculationSheetInputDependency.fromJson(json);
}

/// @nodoc
class _$CalculationSheetInputDependencyTearOff {
  const _$CalculationSheetInputDependencyTearOff();

  _CalculationSheetInputDependency call(
      {required String id, required num max_value, required num multiplier}) {
    return _CalculationSheetInputDependency(
      id: id,
      max_value: max_value,
      multiplier: multiplier,
    );
  }

  CalculationSheetInputDependency fromJson(Map<String, Object?> json) {
    return CalculationSheetInputDependency.fromJson(json);
  }
}

/// @nodoc
const $CalculationSheetInputDependency =
    _$CalculationSheetInputDependencyTearOff();

/// @nodoc
mixin _$CalculationSheetInputDependency {
  String get id => throw _privateConstructorUsedError;
  num get max_value => throw _privateConstructorUsedError;
  num get multiplier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationSheetInputDependencyCopyWith<CalculationSheetInputDependency>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationSheetInputDependencyCopyWith<$Res> {
  factory $CalculationSheetInputDependencyCopyWith(
          CalculationSheetInputDependency value,
          $Res Function(CalculationSheetInputDependency) then) =
      _$CalculationSheetInputDependencyCopyWithImpl<$Res>;
  $Res call({String id, num max_value, num multiplier});
}

/// @nodoc
class _$CalculationSheetInputDependencyCopyWithImpl<$Res>
    implements $CalculationSheetInputDependencyCopyWith<$Res> {
  _$CalculationSheetInputDependencyCopyWithImpl(this._value, this._then);

  final CalculationSheetInputDependency _value;
  // ignore: unused_field
  final $Res Function(CalculationSheetInputDependency) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? max_value = freezed,
    Object? multiplier = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      max_value: max_value == freezed
          ? _value.max_value
          : max_value // ignore: cast_nullable_to_non_nullable
              as num,
      multiplier: multiplier == freezed
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$CalculationSheetInputDependencyCopyWith<$Res>
    implements $CalculationSheetInputDependencyCopyWith<$Res> {
  factory _$CalculationSheetInputDependencyCopyWith(
          _CalculationSheetInputDependency value,
          $Res Function(_CalculationSheetInputDependency) then) =
      __$CalculationSheetInputDependencyCopyWithImpl<$Res>;
  @override
  $Res call({String id, num max_value, num multiplier});
}

/// @nodoc
class __$CalculationSheetInputDependencyCopyWithImpl<$Res>
    extends _$CalculationSheetInputDependencyCopyWithImpl<$Res>
    implements _$CalculationSheetInputDependencyCopyWith<$Res> {
  __$CalculationSheetInputDependencyCopyWithImpl(
      _CalculationSheetInputDependency _value,
      $Res Function(_CalculationSheetInputDependency) _then)
      : super(_value, (v) => _then(v as _CalculationSheetInputDependency));

  @override
  _CalculationSheetInputDependency get _value =>
      super._value as _CalculationSheetInputDependency;

  @override
  $Res call({
    Object? id = freezed,
    Object? max_value = freezed,
    Object? multiplier = freezed,
  }) {
    return _then(_CalculationSheetInputDependency(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      max_value: max_value == freezed
          ? _value.max_value
          : max_value // ignore: cast_nullable_to_non_nullable
              as num,
      multiplier: multiplier == freezed
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculationSheetInputDependency
    implements _CalculationSheetInputDependency {
  _$_CalculationSheetInputDependency(
      {required this.id, required this.max_value, required this.multiplier});

  factory _$_CalculationSheetInputDependency.fromJson(
          Map<String, dynamic> json) =>
      _$$_CalculationSheetInputDependencyFromJson(json);

  @override
  final String id;
  @override
  final num max_value;
  @override
  final num multiplier;

  @override
  String toString() {
    return 'CalculationSheetInputDependency(id: $id, max_value: $max_value, multiplier: $multiplier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculationSheetInputDependency &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.max_value, max_value) ||
                other.max_value == max_value) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, max_value, multiplier);

  @JsonKey(ignore: true)
  @override
  _$CalculationSheetInputDependencyCopyWith<_CalculationSheetInputDependency>
      get copyWith => __$CalculationSheetInputDependencyCopyWithImpl<
          _CalculationSheetInputDependency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculationSheetInputDependencyToJson(this);
  }
}

abstract class _CalculationSheetInputDependency
    implements CalculationSheetInputDependency {
  factory _CalculationSheetInputDependency(
      {required String id,
      required num max_value,
      required num multiplier}) = _$_CalculationSheetInputDependency;

  factory _CalculationSheetInputDependency.fromJson(Map<String, dynamic> json) =
      _$_CalculationSheetInputDependency.fromJson;

  @override
  String get id;
  @override
  num get max_value;
  @override
  num get multiplier;
  @override
  @JsonKey(ignore: true)
  _$CalculationSheetInputDependencyCopyWith<_CalculationSheetInputDependency>
      get copyWith => throw _privateConstructorUsedError;
}

CalculationSheetInputAnswer _$CalculationSheetInputAnswerFromJson(
    Map<String, dynamic> json) {
  return _CalculationSheetInputAnswer.fromJson(json);
}

/// @nodoc
class _$CalculationSheetInputAnswerTearOff {
  const _$CalculationSheetInputAnswerTearOff();

  _CalculationSheetInputAnswer call(
      {required String id, required String label, required num value}) {
    return _CalculationSheetInputAnswer(
      id: id,
      label: label,
      value: value,
    );
  }

  CalculationSheetInputAnswer fromJson(Map<String, Object?> json) {
    return CalculationSheetInputAnswer.fromJson(json);
  }
}

/// @nodoc
const $CalculationSheetInputAnswer = _$CalculationSheetInputAnswerTearOff();

/// @nodoc
mixin _$CalculationSheetInputAnswer {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  num get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationSheetInputAnswerCopyWith<CalculationSheetInputAnswer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationSheetInputAnswerCopyWith<$Res> {
  factory $CalculationSheetInputAnswerCopyWith(
          CalculationSheetInputAnswer value,
          $Res Function(CalculationSheetInputAnswer) then) =
      _$CalculationSheetInputAnswerCopyWithImpl<$Res>;
  $Res call({String id, String label, num value});
}

/// @nodoc
class _$CalculationSheetInputAnswerCopyWithImpl<$Res>
    implements $CalculationSheetInputAnswerCopyWith<$Res> {
  _$CalculationSheetInputAnswerCopyWithImpl(this._value, this._then);

  final CalculationSheetInputAnswer _value;
  // ignore: unused_field
  final $Res Function(CalculationSheetInputAnswer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$CalculationSheetInputAnswerCopyWith<$Res>
    implements $CalculationSheetInputAnswerCopyWith<$Res> {
  factory _$CalculationSheetInputAnswerCopyWith(
          _CalculationSheetInputAnswer value,
          $Res Function(_CalculationSheetInputAnswer) then) =
      __$CalculationSheetInputAnswerCopyWithImpl<$Res>;
  @override
  $Res call({String id, String label, num value});
}

/// @nodoc
class __$CalculationSheetInputAnswerCopyWithImpl<$Res>
    extends _$CalculationSheetInputAnswerCopyWithImpl<$Res>
    implements _$CalculationSheetInputAnswerCopyWith<$Res> {
  __$CalculationSheetInputAnswerCopyWithImpl(
      _CalculationSheetInputAnswer _value,
      $Res Function(_CalculationSheetInputAnswer) _then)
      : super(_value, (v) => _then(v as _CalculationSheetInputAnswer));

  @override
  _CalculationSheetInputAnswer get _value =>
      super._value as _CalculationSheetInputAnswer;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_CalculationSheetInputAnswer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculationSheetInputAnswer implements _CalculationSheetInputAnswer {
  _$_CalculationSheetInputAnswer(
      {required this.id, required this.label, required this.value});

  factory _$_CalculationSheetInputAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_CalculationSheetInputAnswerFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final num value;

  @override
  String toString() {
    return 'CalculationSheetInputAnswer(id: $id, label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculationSheetInputAnswer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, value);

  @JsonKey(ignore: true)
  @override
  _$CalculationSheetInputAnswerCopyWith<_CalculationSheetInputAnswer>
      get copyWith => __$CalculationSheetInputAnswerCopyWithImpl<
          _CalculationSheetInputAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculationSheetInputAnswerToJson(this);
  }
}

abstract class _CalculationSheetInputAnswer
    implements CalculationSheetInputAnswer {
  factory _CalculationSheetInputAnswer(
      {required String id,
      required String label,
      required num value}) = _$_CalculationSheetInputAnswer;

  factory _CalculationSheetInputAnswer.fromJson(Map<String, dynamic> json) =
      _$_CalculationSheetInputAnswer.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  num get value;
  @override
  @JsonKey(ignore: true)
  _$CalculationSheetInputAnswerCopyWith<_CalculationSheetInputAnswer>
      get copyWith => throw _privateConstructorUsedError;
}
