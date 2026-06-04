// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bag_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BagProductEntity {

 String get id; String get name; String get imageUrl; double get price; int get quantity; String get size; String get color;
/// Create a copy of BagProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BagProductEntityCopyWith<BagProductEntity> get copyWith => _$BagProductEntityCopyWithImpl<BagProductEntity>(this as BagProductEntity, _$identity);

  /// Serializes this BagProductEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BagProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.size, size) || other.size == size)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,quantity,size,color);

@override
String toString() {
  return 'BagProductEntity(id: $id, name: $name, imageUrl: $imageUrl, price: $price, quantity: $quantity, size: $size, color: $color)';
}


}

/// @nodoc
abstract mixin class $BagProductEntityCopyWith<$Res>  {
  factory $BagProductEntityCopyWith(BagProductEntity value, $Res Function(BagProductEntity) _then) = _$BagProductEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, double price, int quantity, String size, String color
});




}
/// @nodoc
class _$BagProductEntityCopyWithImpl<$Res>
    implements $BagProductEntityCopyWith<$Res> {
  _$BagProductEntityCopyWithImpl(this._self, this._then);

  final BagProductEntity _self;
  final $Res Function(BagProductEntity) _then;

/// Create a copy of BagProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? size = null,Object? color = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BagProductEntity].
extension BagProductEntityPatterns on BagProductEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BagProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BagProductEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BagProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _BagProductEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BagProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BagProductEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  double price,  int quantity,  String size,  String color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BagProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.price,_that.quantity,_that.size,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  double price,  int quantity,  String size,  String color)  $default,) {final _that = this;
switch (_that) {
case _BagProductEntity():
return $default(_that.id,_that.name,_that.imageUrl,_that.price,_that.quantity,_that.size,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imageUrl,  double price,  int quantity,  String size,  String color)?  $default,) {final _that = this;
switch (_that) {
case _BagProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.price,_that.quantity,_that.size,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BagProductEntity implements BagProductEntity {
  const _BagProductEntity({required this.id, required this.name, required this.imageUrl, required this.price, required this.quantity, required this.size, required this.color});
  factory _BagProductEntity.fromJson(Map<String, dynamic> json) => _$BagProductEntityFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  double price;
@override final  int quantity;
@override final  String size;
@override final  String color;

/// Create a copy of BagProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BagProductEntityCopyWith<_BagProductEntity> get copyWith => __$BagProductEntityCopyWithImpl<_BagProductEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BagProductEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BagProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.size, size) || other.size == size)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,quantity,size,color);

@override
String toString() {
  return 'BagProductEntity(id: $id, name: $name, imageUrl: $imageUrl, price: $price, quantity: $quantity, size: $size, color: $color)';
}


}

/// @nodoc
abstract mixin class _$BagProductEntityCopyWith<$Res> implements $BagProductEntityCopyWith<$Res> {
  factory _$BagProductEntityCopyWith(_BagProductEntity value, $Res Function(_BagProductEntity) _then) = __$BagProductEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, double price, int quantity, String size, String color
});




}
/// @nodoc
class __$BagProductEntityCopyWithImpl<$Res>
    implements _$BagProductEntityCopyWith<$Res> {
  __$BagProductEntityCopyWithImpl(this._self, this._then);

  final _BagProductEntity _self;
  final $Res Function(_BagProductEntity) _then;

/// Create a copy of BagProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? size = null,Object? color = null,}) {
  return _then(_BagProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
