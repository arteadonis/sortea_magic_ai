// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draw_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DrawConfig {

 int get minMentions; bool get dedupeByUser; int get winnersCount; int get alternatesCount; String? get seed;
/// Create a copy of DrawConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawConfigCopyWith<DrawConfig> get copyWith => _$DrawConfigCopyWithImpl<DrawConfig>(this as DrawConfig, _$identity);

  /// Serializes this DrawConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawConfig&&(identical(other.minMentions, minMentions) || other.minMentions == minMentions)&&(identical(other.dedupeByUser, dedupeByUser) || other.dedupeByUser == dedupeByUser)&&(identical(other.winnersCount, winnersCount) || other.winnersCount == winnersCount)&&(identical(other.alternatesCount, alternatesCount) || other.alternatesCount == alternatesCount)&&(identical(other.seed, seed) || other.seed == seed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minMentions,dedupeByUser,winnersCount,alternatesCount,seed);

@override
String toString() {
  return 'DrawConfig(minMentions: $minMentions, dedupeByUser: $dedupeByUser, winnersCount: $winnersCount, alternatesCount: $alternatesCount, seed: $seed)';
}


}

/// @nodoc
abstract mixin class $DrawConfigCopyWith<$Res>  {
  factory $DrawConfigCopyWith(DrawConfig value, $Res Function(DrawConfig) _then) = _$DrawConfigCopyWithImpl;
@useResult
$Res call({
 int minMentions, bool dedupeByUser, int winnersCount, int alternatesCount, String? seed
});




}
/// @nodoc
class _$DrawConfigCopyWithImpl<$Res>
    implements $DrawConfigCopyWith<$Res> {
  _$DrawConfigCopyWithImpl(this._self, this._then);

  final DrawConfig _self;
  final $Res Function(DrawConfig) _then;

/// Create a copy of DrawConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minMentions = null,Object? dedupeByUser = null,Object? winnersCount = null,Object? alternatesCount = null,Object? seed = freezed,}) {
  return _then(_self.copyWith(
minMentions: null == minMentions ? _self.minMentions : minMentions // ignore: cast_nullable_to_non_nullable
as int,dedupeByUser: null == dedupeByUser ? _self.dedupeByUser : dedupeByUser // ignore: cast_nullable_to_non_nullable
as bool,winnersCount: null == winnersCount ? _self.winnersCount : winnersCount // ignore: cast_nullable_to_non_nullable
as int,alternatesCount: null == alternatesCount ? _self.alternatesCount : alternatesCount // ignore: cast_nullable_to_non_nullable
as int,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DrawConfig].
extension DrawConfigPatterns on DrawConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrawConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrawConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrawConfig value)  $default,){
final _that = this;
switch (_that) {
case _DrawConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrawConfig value)?  $default,){
final _that = this;
switch (_that) {
case _DrawConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int minMentions,  bool dedupeByUser,  int winnersCount,  int alternatesCount,  String? seed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrawConfig() when $default != null:
return $default(_that.minMentions,_that.dedupeByUser,_that.winnersCount,_that.alternatesCount,_that.seed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int minMentions,  bool dedupeByUser,  int winnersCount,  int alternatesCount,  String? seed)  $default,) {final _that = this;
switch (_that) {
case _DrawConfig():
return $default(_that.minMentions,_that.dedupeByUser,_that.winnersCount,_that.alternatesCount,_that.seed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int minMentions,  bool dedupeByUser,  int winnersCount,  int alternatesCount,  String? seed)?  $default,) {final _that = this;
switch (_that) {
case _DrawConfig() when $default != null:
return $default(_that.minMentions,_that.dedupeByUser,_that.winnersCount,_that.alternatesCount,_that.seed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DrawConfig implements DrawConfig {
  const _DrawConfig({this.minMentions = 0, this.dedupeByUser = true, this.winnersCount = 1, this.alternatesCount = 0, this.seed});
  factory _DrawConfig.fromJson(Map<String, dynamic> json) => _$DrawConfigFromJson(json);

@override@JsonKey() final  int minMentions;
@override@JsonKey() final  bool dedupeByUser;
@override@JsonKey() final  int winnersCount;
@override@JsonKey() final  int alternatesCount;
@override final  String? seed;

/// Create a copy of DrawConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawConfigCopyWith<_DrawConfig> get copyWith => __$DrawConfigCopyWithImpl<_DrawConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DrawConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawConfig&&(identical(other.minMentions, minMentions) || other.minMentions == minMentions)&&(identical(other.dedupeByUser, dedupeByUser) || other.dedupeByUser == dedupeByUser)&&(identical(other.winnersCount, winnersCount) || other.winnersCount == winnersCount)&&(identical(other.alternatesCount, alternatesCount) || other.alternatesCount == alternatesCount)&&(identical(other.seed, seed) || other.seed == seed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minMentions,dedupeByUser,winnersCount,alternatesCount,seed);

@override
String toString() {
  return 'DrawConfig(minMentions: $minMentions, dedupeByUser: $dedupeByUser, winnersCount: $winnersCount, alternatesCount: $alternatesCount, seed: $seed)';
}


}

/// @nodoc
abstract mixin class _$DrawConfigCopyWith<$Res> implements $DrawConfigCopyWith<$Res> {
  factory _$DrawConfigCopyWith(_DrawConfig value, $Res Function(_DrawConfig) _then) = __$DrawConfigCopyWithImpl;
@override @useResult
$Res call({
 int minMentions, bool dedupeByUser, int winnersCount, int alternatesCount, String? seed
});




}
/// @nodoc
class __$DrawConfigCopyWithImpl<$Res>
    implements _$DrawConfigCopyWith<$Res> {
  __$DrawConfigCopyWithImpl(this._self, this._then);

  final _DrawConfig _self;
  final $Res Function(_DrawConfig) _then;

/// Create a copy of DrawConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minMentions = null,Object? dedupeByUser = null,Object? winnersCount = null,Object? alternatesCount = null,Object? seed = freezed,}) {
  return _then(_DrawConfig(
minMentions: null == minMentions ? _self.minMentions : minMentions // ignore: cast_nullable_to_non_nullable
as int,dedupeByUser: null == dedupeByUser ? _self.dedupeByUser : dedupeByUser // ignore: cast_nullable_to_non_nullable
as bool,winnersCount: null == winnersCount ? _self.winnersCount : winnersCount // ignore: cast_nullable_to_non_nullable
as int,alternatesCount: null == alternatesCount ? _self.alternatesCount : alternatesCount // ignore: cast_nullable_to_non_nullable
as int,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
