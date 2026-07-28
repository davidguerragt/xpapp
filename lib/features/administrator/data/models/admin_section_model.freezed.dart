// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminSectionModel {

 String get id; String get name; String get description; String get imageUrl;@JsonKey(includeFromJson: false, includeToJson: false) XFile? get imageFile;
/// Create a copy of AdminSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminSectionModelCopyWith<AdminSectionModel> get copyWith => _$AdminSectionModelCopyWithImpl<AdminSectionModel>(this as AdminSectionModel, _$identity);

  /// Serializes this AdminSectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,imageFile);

@override
String toString() {
  return 'AdminSectionModel(id: $id, name: $name, description: $description, imageUrl: $imageUrl, imageFile: $imageFile)';
}


}

/// @nodoc
abstract mixin class $AdminSectionModelCopyWith<$Res>  {
  factory $AdminSectionModelCopyWith(AdminSectionModel value, $Res Function(AdminSectionModel) _then) = _$AdminSectionModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, String imageUrl,@JsonKey(includeFromJson: false, includeToJson: false) XFile? imageFile
});




}
/// @nodoc
class _$AdminSectionModelCopyWithImpl<$Res>
    implements $AdminSectionModelCopyWith<$Res> {
  _$AdminSectionModelCopyWithImpl(this._self, this._then);

  final AdminSectionModel _self;
  final $Res Function(AdminSectionModel) _then;

/// Create a copy of AdminSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? imageFile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminSectionModel].
extension AdminSectionModelPatterns on AdminSectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminSectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminSectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminSectionModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminSectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminSectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminSectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String imageUrl, @JsonKey(includeFromJson: false, includeToJson: false)  XFile? imageFile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminSectionModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.imageFile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  String imageUrl, @JsonKey(includeFromJson: false, includeToJson: false)  XFile? imageFile)  $default,) {final _that = this;
switch (_that) {
case _AdminSectionModel():
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.imageFile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  String imageUrl, @JsonKey(includeFromJson: false, includeToJson: false)  XFile? imageFile)?  $default,) {final _that = this;
switch (_that) {
case _AdminSectionModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.imageUrl,_that.imageFile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminSectionModel implements AdminSectionModel {
   _AdminSectionModel({required this.id, required this.name, required this.description, required this.imageUrl, @JsonKey(includeFromJson: false, includeToJson: false) this.imageFile});
  factory _AdminSectionModel.fromJson(Map<String, dynamic> json) => _$AdminSectionModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;
@override final  String imageUrl;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  XFile? imageFile;

/// Create a copy of AdminSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminSectionModelCopyWith<_AdminSectionModel> get copyWith => __$AdminSectionModelCopyWithImpl<_AdminSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,imageUrl,imageFile);

@override
String toString() {
  return 'AdminSectionModel(id: $id, name: $name, description: $description, imageUrl: $imageUrl, imageFile: $imageFile)';
}


}

/// @nodoc
abstract mixin class _$AdminSectionModelCopyWith<$Res> implements $AdminSectionModelCopyWith<$Res> {
  factory _$AdminSectionModelCopyWith(_AdminSectionModel value, $Res Function(_AdminSectionModel) _then) = __$AdminSectionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, String imageUrl,@JsonKey(includeFromJson: false, includeToJson: false) XFile? imageFile
});




}
/// @nodoc
class __$AdminSectionModelCopyWithImpl<$Res>
    implements _$AdminSectionModelCopyWith<$Res> {
  __$AdminSectionModelCopyWithImpl(this._self, this._then);

  final _AdminSectionModel _self;
  final $Res Function(_AdminSectionModel) _then;

/// Create a copy of AdminSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? imageUrl = null,Object? imageFile = freezed,}) {
  return _then(_AdminSectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

// dart format on
