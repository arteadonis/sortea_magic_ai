// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legal_draft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LegalDraft {

 String get title; String get body; Map<String, String> get metadata;
/// Create a copy of LegalDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegalDraftCopyWith<LegalDraft> get copyWith => _$LegalDraftCopyWithImpl<LegalDraft>(this as LegalDraft, _$identity);

  /// Serializes this LegalDraft to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegalDraft&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'LegalDraft(title: $title, body: $body, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $LegalDraftCopyWith<$Res>  {
  factory $LegalDraftCopyWith(LegalDraft value, $Res Function(LegalDraft) _then) = _$LegalDraftCopyWithImpl;
@useResult
$Res call({
 String title, String body, Map<String, String> metadata
});




}
/// @nodoc
class _$LegalDraftCopyWithImpl<$Res>
    implements $LegalDraftCopyWith<$Res> {
  _$LegalDraftCopyWithImpl(this._self, this._then);

  final LegalDraft _self;
  final $Res Function(LegalDraft) _then;

/// Create a copy of LegalDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? body = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LegalDraft].
extension LegalDraftPatterns on LegalDraft {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegalDraft value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegalDraft() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegalDraft value)  $default,){
final _that = this;
switch (_that) {
case _LegalDraft():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegalDraft value)?  $default,){
final _that = this;
switch (_that) {
case _LegalDraft() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String body,  Map<String, String> metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegalDraft() when $default != null:
return $default(_that.title,_that.body,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String body,  Map<String, String> metadata)  $default,) {final _that = this;
switch (_that) {
case _LegalDraft():
return $default(_that.title,_that.body,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String body,  Map<String, String> metadata)?  $default,) {final _that = this;
switch (_that) {
case _LegalDraft() when $default != null:
return $default(_that.title,_that.body,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegalDraft implements LegalDraft {
  const _LegalDraft({required this.title, required this.body, final  Map<String, String> metadata = const {}}): _metadata = metadata;
  factory _LegalDraft.fromJson(Map<String, dynamic> json) => _$LegalDraftFromJson(json);

@override final  String title;
@override final  String body;
 final  Map<String, String> _metadata;
@override@JsonKey() Map<String, String> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}


/// Create a copy of LegalDraft
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegalDraftCopyWith<_LegalDraft> get copyWith => __$LegalDraftCopyWithImpl<_LegalDraft>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegalDraftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegalDraft&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,body,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'LegalDraft(title: $title, body: $body, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$LegalDraftCopyWith<$Res> implements $LegalDraftCopyWith<$Res> {
  factory _$LegalDraftCopyWith(_LegalDraft value, $Res Function(_LegalDraft) _then) = __$LegalDraftCopyWithImpl;
@override @useResult
$Res call({
 String title, String body, Map<String, String> metadata
});




}
/// @nodoc
class __$LegalDraftCopyWithImpl<$Res>
    implements _$LegalDraftCopyWith<$Res> {
  __$LegalDraftCopyWithImpl(this._self, this._then);

  final _LegalDraft _self;
  final $Res Function(_LegalDraft) _then;

/// Create a copy of LegalDraft
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,Object? metadata = null,}) {
  return _then(_LegalDraft(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
