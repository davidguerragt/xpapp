// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_product_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminProductImageModel {

 String get id; String get productId; String get imageUrl;@JsonKey(includeFromJson: false, includeToJson: false) XFile? get imageFile;
/// Create a copy of AdminProductImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminProductImageModelCopyWith<AdminProductImageModel> get copyWith => _$AdminProductImageModelCopyWithImpl<AdminProductImageModel>(this as AdminProductImageModel, _$identity);

  /// Serializes this AdminProductImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductImageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,imageUrl,imageFile);

@override
String toString() {
  return 'AdminProductImageModel(id: $id, productId: $productId, imageUrl: $imageUrl, imageFile: $imageFile)';
}


}

/// @nodoc
abstract mixin class $AdminProductImageModelCopyWith<$Res>  {
  factory $AdminProductImageModelCopyWith(AdminProductImageModel value, $Res Function(AdminProductImageModel) _then) = _$AdminProductImageModelCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String imageUrl,@JsonKey(includeFromJson: false, includeToJson: false) XFile? imageFile
});




}
/// @nodoc
class _$AdminProductImageModelCopyWithImpl<$Res>
    implements $AdminProductImageModelCopyWith<$Res> {
  _$AdminProductImageModelCopyWithImpl(this._self, this._then);

  final AdminProductImageModel _self;
  final $Res Function(AdminProductImageModel) _then;

/// Create a copy of AdminProductImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? imageUrl = null,Object? imageFile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminProductImageModel].
extension AdminProductImageModelPatterns on AdminProductImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminProductImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminProductImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminProductImageModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminProductImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminProductImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminProductImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String imageUrl, @JsonKey(includeFromJson: false, includeToJson: false)  XFile? imageFile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminProductImageModel() when $default != null:
return $default(_that.id,_that.productId,_that.imageUrl,_that.imageFile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String imageUrl, @JsonKey(includeFromJson: false, includeToJson: false)  XFile? imageFile)  $default,) {final _that = this;
switch (_that) {
case _AdminProductImageModel():
return $default(_that.id,_that.productId,_that.imageUrl,_that.imageFile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String imageUrl, @JsonKey(includeFromJson: false, includeToJson: false)  XFile? imageFile)?  $default,) {final _that = this;
switch (_that) {
case _AdminProductImageModel() when $default != null:
return $default(_that.id,_that.productId,_that.imageUrl,_that.imageFile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminProductImageModel implements AdminProductImageModel {
   _AdminProductImageModel({required this.id, required this.productId, required this.imageUrl, @JsonKey(includeFromJson: false, includeToJson: false) this.imageFile});
  factory _AdminProductImageModel.fromJson(Map<String, dynamic> json) => _$AdminProductImageModelFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String imageUrl;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  XFile? imageFile;

/// Create a copy of AdminProductImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminProductImageModelCopyWith<_AdminProductImageModel> get copyWith => __$AdminProductImageModelCopyWithImpl<_AdminProductImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminProductImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminProductImageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,imageUrl,imageFile);

@override
String toString() {
  return 'AdminProductImageModel(id: $id, productId: $productId, imageUrl: $imageUrl, imageFile: $imageFile)';
}


}

/// @nodoc
abstract mixin class _$AdminProductImageModelCopyWith<$Res> implements $AdminProductImageModelCopyWith<$Res> {
  factory _$AdminProductImageModelCopyWith(_AdminProductImageModel value, $Res Function(_AdminProductImageModel) _then) = __$AdminProductImageModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String imageUrl,@JsonKey(includeFromJson: false, includeToJson: false) XFile? imageFile
});




}
/// @nodoc
class __$AdminProductImageModelCopyWithImpl<$Res>
    implements _$AdminProductImageModelCopyWith<$Res> {
  __$AdminProductImageModelCopyWithImpl(this._self, this._then);

  final _AdminProductImageModel _self;
  final $Res Function(_AdminProductImageModel) _then;

/// Create a copy of AdminProductImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? imageUrl = null,Object? imageFile = freezed,}) {
  return _then(_AdminProductImageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

// dart format on
