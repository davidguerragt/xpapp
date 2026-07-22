// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminProductEntity {

 String get id; String? get title; String? get description; double? get price; String? get image; List<String>? get sizes; List<String>? get colors; List<String>? get sections;
/// Create a copy of AdminProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminProductEntityCopyWith<AdminProductEntity> get copyWith => _$AdminProductEntityCopyWithImpl<AdminProductEntity>(this as AdminProductEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.sizes, sizes)&&const DeepCollectionEquality().equals(other.colors, colors)&&const DeepCollectionEquality().equals(other.sections, sections));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,image,const DeepCollectionEquality().hash(sizes),const DeepCollectionEquality().hash(colors),const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'AdminProductEntity(id: $id, title: $title, description: $description, price: $price, image: $image, sizes: $sizes, colors: $colors, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $AdminProductEntityCopyWith<$Res>  {
  factory $AdminProductEntityCopyWith(AdminProductEntity value, $Res Function(AdminProductEntity) _then) = _$AdminProductEntityCopyWithImpl;
@useResult
$Res call({
 String id, String? title, String? description, double? price, String? image, List<String>? sizes, List<String>? colors, List<String>? sections
});




}
/// @nodoc
class _$AdminProductEntityCopyWithImpl<$Res>
    implements $AdminProductEntityCopyWith<$Res> {
  _$AdminProductEntityCopyWithImpl(this._self, this._then);

  final AdminProductEntity _self;
  final $Res Function(AdminProductEntity) _then;

/// Create a copy of AdminProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? price = freezed,Object? image = freezed,Object? sizes = freezed,Object? colors = freezed,Object? sections = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,sizes: freezed == sizes ? _self.sizes : sizes // ignore: cast_nullable_to_non_nullable
as List<String>?,colors: freezed == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>?,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminProductEntity].
extension AdminProductEntityPatterns on AdminProductEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminProductEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _AdminProductEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AdminProductEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? title,  String? description,  double? price,  String? image,  List<String>? sizes,  List<String>? colors,  List<String>? sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminProductEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.image,_that.sizes,_that.colors,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? title,  String? description,  double? price,  String? image,  List<String>? sizes,  List<String>? colors,  List<String>? sections)  $default,) {final _that = this;
switch (_that) {
case _AdminProductEntity():
return $default(_that.id,_that.title,_that.description,_that.price,_that.image,_that.sizes,_that.colors,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? title,  String? description,  double? price,  String? image,  List<String>? sizes,  List<String>? colors,  List<String>? sections)?  $default,) {final _that = this;
switch (_that) {
case _AdminProductEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.image,_that.sizes,_that.colors,_that.sections);case _:
  return null;

}
}

}

/// @nodoc


class _AdminProductEntity implements AdminProductEntity {
  const _AdminProductEntity({required this.id, required this.title, required this.description, required this.price, required this.image, required final  List<String>? sizes, required final  List<String>? colors, required final  List<String>? sections}): _sizes = sizes,_colors = colors,_sections = sections;
  

@override final  String id;
@override final  String? title;
@override final  String? description;
@override final  double? price;
@override final  String? image;
 final  List<String>? _sizes;
@override List<String>? get sizes {
  final value = _sizes;
  if (value == null) return null;
  if (_sizes is EqualUnmodifiableListView) return _sizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _colors;
@override List<String>? get colors {
  final value = _colors;
  if (value == null) return null;
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _sections;
@override List<String>? get sections {
  final value = _sections;
  if (value == null) return null;
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AdminProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminProductEntityCopyWith<_AdminProductEntity> get copyWith => __$AdminProductEntityCopyWithImpl<_AdminProductEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._sizes, _sizes)&&const DeepCollectionEquality().equals(other._colors, _colors)&&const DeepCollectionEquality().equals(other._sections, _sections));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,image,const DeepCollectionEquality().hash(_sizes),const DeepCollectionEquality().hash(_colors),const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'AdminProductEntity(id: $id, title: $title, description: $description, price: $price, image: $image, sizes: $sizes, colors: $colors, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$AdminProductEntityCopyWith<$Res> implements $AdminProductEntityCopyWith<$Res> {
  factory _$AdminProductEntityCopyWith(_AdminProductEntity value, $Res Function(_AdminProductEntity) _then) = __$AdminProductEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String? title, String? description, double? price, String? image, List<String>? sizes, List<String>? colors, List<String>? sections
});




}
/// @nodoc
class __$AdminProductEntityCopyWithImpl<$Res>
    implements _$AdminProductEntityCopyWith<$Res> {
  __$AdminProductEntityCopyWithImpl(this._self, this._then);

  final _AdminProductEntity _self;
  final $Res Function(_AdminProductEntity) _then;

/// Create a copy of AdminProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? price = freezed,Object? image = freezed,Object? sizes = freezed,Object? colors = freezed,Object? sections = freezed,}) {
  return _then(_AdminProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,sizes: freezed == sizes ? _self._sizes : sizes // ignore: cast_nullable_to_non_nullable
as List<String>?,colors: freezed == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>?,sections: freezed == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
