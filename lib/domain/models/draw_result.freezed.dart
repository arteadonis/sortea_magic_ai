// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draw_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DrawResult {

 List<Comment> get winners; List<Comment> get alternates; String get inputHash; DrawConfig get configSnapshot; DateTime get createdAt;
/// Create a copy of DrawResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawResultCopyWith<DrawResult> get copyWith => _$DrawResultCopyWithImpl<DrawResult>(this as DrawResult, _$identity);

  /// Serializes this DrawResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawResult&&const DeepCollectionEquality().equals(other.winners, winners)&&const DeepCollectionEquality().equals(other.alternates, alternates)&&(identical(other.inputHash, inputHash) || other.inputHash == inputHash)&&(identical(other.configSnapshot, configSnapshot) || other.configSnapshot == configSnapshot)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(winners),const DeepCollectionEquality().hash(alternates),inputHash,configSnapshot,createdAt);

@override
String toString() {
  return 'DrawResult(winners: $winners, alternates: $alternates, inputHash: $inputHash, configSnapshot: $configSnapshot, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DrawResultCopyWith<$Res>  {
  factory $DrawResultCopyWith(DrawResult value, $Res Function(DrawResult) _then) = _$DrawResultCopyWithImpl;
@useResult
$Res call({
 List<Comment> winners, List<Comment> alternates, String inputHash, DrawConfig configSnapshot, DateTime createdAt
});


$DrawConfigCopyWith<$Res> get configSnapshot;

}
/// @nodoc
class _$DrawResultCopyWithImpl<$Res>
    implements $DrawResultCopyWith<$Res> {
  _$DrawResultCopyWithImpl(this._self, this._then);

  final DrawResult _self;
  final $Res Function(DrawResult) _then;

/// Create a copy of DrawResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? winners = null,Object? alternates = null,Object? inputHash = null,Object? configSnapshot = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
winners: null == winners ? _self.winners : winners // ignore: cast_nullable_to_non_nullable
as List<Comment>,alternates: null == alternates ? _self.alternates : alternates // ignore: cast_nullable_to_non_nullable
as List<Comment>,inputHash: null == inputHash ? _self.inputHash : inputHash // ignore: cast_nullable_to_non_nullable
as String,configSnapshot: null == configSnapshot ? _self.configSnapshot : configSnapshot // ignore: cast_nullable_to_non_nullable
as DrawConfig,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of DrawResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DrawConfigCopyWith<$Res> get configSnapshot {
  
  return $DrawConfigCopyWith<$Res>(_self.configSnapshot, (value) {
    return _then(_self.copyWith(configSnapshot: value));
  });
}
}


/// Adds pattern-matching-related methods to [DrawResult].
extension DrawResultPatterns on DrawResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrawResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrawResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrawResult value)  $default,){
final _that = this;
switch (_that) {
case _DrawResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrawResult value)?  $default,){
final _that = this;
switch (_that) {
case _DrawResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Comment> winners,  List<Comment> alternates,  String inputHash,  DrawConfig configSnapshot,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrawResult() when $default != null:
return $default(_that.winners,_that.alternates,_that.inputHash,_that.configSnapshot,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Comment> winners,  List<Comment> alternates,  String inputHash,  DrawConfig configSnapshot,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _DrawResult():
return $default(_that.winners,_that.alternates,_that.inputHash,_that.configSnapshot,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Comment> winners,  List<Comment> alternates,  String inputHash,  DrawConfig configSnapshot,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DrawResult() when $default != null:
return $default(_that.winners,_that.alternates,_that.inputHash,_that.configSnapshot,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DrawResult implements DrawResult {
  const _DrawResult({required final  List<Comment> winners, required final  List<Comment> alternates, required this.inputHash, required this.configSnapshot, required this.createdAt}): _winners = winners,_alternates = alternates;
  factory _DrawResult.fromJson(Map<String, dynamic> json) => _$DrawResultFromJson(json);

 final  List<Comment> _winners;
@override List<Comment> get winners {
  if (_winners is EqualUnmodifiableListView) return _winners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_winners);
}

 final  List<Comment> _alternates;
@override List<Comment> get alternates {
  if (_alternates is EqualUnmodifiableListView) return _alternates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alternates);
}

@override final  String inputHash;
@override final  DrawConfig configSnapshot;
@override final  DateTime createdAt;

/// Create a copy of DrawResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawResultCopyWith<_DrawResult> get copyWith => __$DrawResultCopyWithImpl<_DrawResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DrawResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawResult&&const DeepCollectionEquality().equals(other._winners, _winners)&&const DeepCollectionEquality().equals(other._alternates, _alternates)&&(identical(other.inputHash, inputHash) || other.inputHash == inputHash)&&(identical(other.configSnapshot, configSnapshot) || other.configSnapshot == configSnapshot)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_winners),const DeepCollectionEquality().hash(_alternates),inputHash,configSnapshot,createdAt);

@override
String toString() {
  return 'DrawResult(winners: $winners, alternates: $alternates, inputHash: $inputHash, configSnapshot: $configSnapshot, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DrawResultCopyWith<$Res> implements $DrawResultCopyWith<$Res> {
  factory _$DrawResultCopyWith(_DrawResult value, $Res Function(_DrawResult) _then) = __$DrawResultCopyWithImpl;
@override @useResult
$Res call({
 List<Comment> winners, List<Comment> alternates, String inputHash, DrawConfig configSnapshot, DateTime createdAt
});


@override $DrawConfigCopyWith<$Res> get configSnapshot;

}
/// @nodoc
class __$DrawResultCopyWithImpl<$Res>
    implements _$DrawResultCopyWith<$Res> {
  __$DrawResultCopyWithImpl(this._self, this._then);

  final _DrawResult _self;
  final $Res Function(_DrawResult) _then;

/// Create a copy of DrawResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? winners = null,Object? alternates = null,Object? inputHash = null,Object? configSnapshot = null,Object? createdAt = null,}) {
  return _then(_DrawResult(
winners: null == winners ? _self._winners : winners // ignore: cast_nullable_to_non_nullable
as List<Comment>,alternates: null == alternates ? _self._alternates : alternates // ignore: cast_nullable_to_non_nullable
as List<Comment>,inputHash: null == inputHash ? _self.inputHash : inputHash // ignore: cast_nullable_to_non_nullable
as String,configSnapshot: null == configSnapshot ? _self.configSnapshot : configSnapshot // ignore: cast_nullable_to_non_nullable
as DrawConfig,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of DrawResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DrawConfigCopyWith<$Res> get configSnapshot {
  
  return $DrawConfigCopyWith<$Res>(_self.configSnapshot, (value) {
    return _then(_self.copyWith(configSnapshot: value));
  });
}
}

// dart format on
