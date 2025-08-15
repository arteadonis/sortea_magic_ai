// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draw_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DrawInput {

 String get sourceUrl; List<Comment> get comments;
/// Create a copy of DrawInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawInputCopyWith<DrawInput> get copyWith => _$DrawInputCopyWithImpl<DrawInput>(this as DrawInput, _$identity);

  /// Serializes this DrawInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawInput&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl)&&const DeepCollectionEquality().equals(other.comments, comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sourceUrl,const DeepCollectionEquality().hash(comments));

@override
String toString() {
  return 'DrawInput(sourceUrl: $sourceUrl, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $DrawInputCopyWith<$Res>  {
  factory $DrawInputCopyWith(DrawInput value, $Res Function(DrawInput) _then) = _$DrawInputCopyWithImpl;
@useResult
$Res call({
 String sourceUrl, List<Comment> comments
});




}
/// @nodoc
class _$DrawInputCopyWithImpl<$Res>
    implements $DrawInputCopyWith<$Res> {
  _$DrawInputCopyWithImpl(this._self, this._then);

  final DrawInput _self;
  final $Res Function(DrawInput) _then;

/// Create a copy of DrawInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sourceUrl = null,Object? comments = null,}) {
  return _then(_self.copyWith(
sourceUrl: null == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<Comment>,
  ));
}

}


/// Adds pattern-matching-related methods to [DrawInput].
extension DrawInputPatterns on DrawInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DrawInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DrawInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DrawInput value)  $default,){
final _that = this;
switch (_that) {
case _DrawInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DrawInput value)?  $default,){
final _that = this;
switch (_that) {
case _DrawInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sourceUrl,  List<Comment> comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DrawInput() when $default != null:
return $default(_that.sourceUrl,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sourceUrl,  List<Comment> comments)  $default,) {final _that = this;
switch (_that) {
case _DrawInput():
return $default(_that.sourceUrl,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sourceUrl,  List<Comment> comments)?  $default,) {final _that = this;
switch (_that) {
case _DrawInput() when $default != null:
return $default(_that.sourceUrl,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DrawInput implements DrawInput {
  const _DrawInput({required this.sourceUrl, required final  List<Comment> comments}): _comments = comments;
  factory _DrawInput.fromJson(Map<String, dynamic> json) => _$DrawInputFromJson(json);

@override final  String sourceUrl;
 final  List<Comment> _comments;
@override List<Comment> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}


/// Create a copy of DrawInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawInputCopyWith<_DrawInput> get copyWith => __$DrawInputCopyWithImpl<_DrawInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DrawInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawInput&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl)&&const DeepCollectionEquality().equals(other._comments, _comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sourceUrl,const DeepCollectionEquality().hash(_comments));

@override
String toString() {
  return 'DrawInput(sourceUrl: $sourceUrl, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$DrawInputCopyWith<$Res> implements $DrawInputCopyWith<$Res> {
  factory _$DrawInputCopyWith(_DrawInput value, $Res Function(_DrawInput) _then) = __$DrawInputCopyWithImpl;
@override @useResult
$Res call({
 String sourceUrl, List<Comment> comments
});




}
/// @nodoc
class __$DrawInputCopyWithImpl<$Res>
    implements _$DrawInputCopyWith<$Res> {
  __$DrawInputCopyWithImpl(this._self, this._then);

  final _DrawInput _self;
  final $Res Function(_DrawInput) _then;

/// Create a copy of DrawInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sourceUrl = null,Object? comments = null,}) {
  return _then(_DrawInput(
sourceUrl: null == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<Comment>,
  ));
}


}

// dart format on
