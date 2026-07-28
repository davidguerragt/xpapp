// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_section_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminSectionEntity {

 String get id; String get name; String get description; String get imageUrl;
/// Create a copy of AdminSectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminSectionEntityCopyWith<AdminSectionEntity> get copyWith => _$AdminSectionEntityCopyWithImpl<AdminSectionEntity>(this as AdminSectionEntity, _$identity);

  /// Serializes this AdminSectionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminSectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl);

@override
String toString() {
  return 'AdminSectionEntity(id: $id, name: $name, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $AdminSectionEntityCopyWith<$Res>  {
  factory $AdminSectionEntityCopyWith(AdminSectionEntity value, $Res Function(AdminSectionEntity) _then) = _$AdminSectionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String imageUrl
});




}
/// @nodoc
class _$AdminSectionEntityCopyWithImpl<$Res>
    implements $AdminSectionEntityCopyWith<$Res> {
  _$AdminSectionEntityCopyWithImpl(this._self, this._then);

  final AdminSectionEntity _self;
  final $Res Function(AdminSectionEntity) _then;

/// Create a copy of AdminSectionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminSectionEntity].
extension AdminSectionEntityPatterns on AdminSectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminSectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminSectionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminSectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _AdminSectionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminSectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AdminSectionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminSectionEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _AdminSectionEntity():
return $default(_that.id,_that.name,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _AdminSectionEntity() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminSectionEntity implements AdminSectionEntity {
   _AdminSectionEntity({required this.id, required this.name, required this.description, required this.imageUrl});
  factory _AdminSectionEntity.fromJson(Map<String, dynamic> json) => _$AdminSectionEntityFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String imageUrl;

/// Create a copy of AdminSectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminSectionEntityCopyWith<_AdminSectionEntity> get copyWith => __$AdminSectionEntityCopyWithImpl<_AdminSectionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminSectionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminSectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl);

@override
String toString() {
  return 'AdminSectionEntity(id: $id, name: $name, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$AdminSectionEntityCopyWith<$Res> implements $AdminSectionEntityCopyWith<$Res> {
  factory _$AdminSectionEntityCopyWith(_AdminSectionEntity value, $Res Function(_AdminSectionEntity) _then) = __$AdminSectionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String imageUrl
});




}
/// @nodoc
class __$AdminSectionEntityCopyWithImpl<$Res>
    implements _$AdminSectionEntityCopyWith<$Res> {
  __$AdminSectionEntityCopyWithImpl(this._self, this._then);

  final _AdminSectionEntity _self;
  final $Res Function(_AdminSectionEntity) _then;

/// Create a copy of AdminSectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,}) {
  return _then(_AdminSectionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
