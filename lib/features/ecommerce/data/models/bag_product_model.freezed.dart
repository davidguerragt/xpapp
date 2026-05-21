// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bag_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BagProductModel {

 String get id; String get name; String get imageUrl; double get price; int get quantity; String get size; String get color;
/// Create a copy of BagProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BagProductModelCopyWith<BagProductModel> get copyWith => _$BagProductModelCopyWithImpl<BagProductModel>(this as BagProductModel, _$identity);

  /// Serializes this BagProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BagProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.size, size) || other.size == size)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,quantity,size,color);

@override
String toString() {
  return 'BagProductModel(id: $id, name: $name, imageUrl: $imageUrl, price: $price, quantity: $quantity, size: $size, color: $color)';
}


}

/// @nodoc
abstract mixin class $BagProductModelCopyWith<$Res>  {
  factory $BagProductModelCopyWith(BagProductModel value, $Res Function(BagProductModel) _then) = _$BagProductModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, double price, int quantity, String size, String color
});




}
/// @nodoc
class _$BagProductModelCopyWithImpl<$Res>
    implements $BagProductModelCopyWith<$Res> {
  _$BagProductModelCopyWithImpl(this._self, this._then);

  final BagProductModel _self;
  final $Res Function(BagProductModel) _then;

/// Create a copy of BagProductModel
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


/// Adds pattern-matching-related methods to [BagProductModel].
extension BagProductModelPatterns on BagProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BagProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BagProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BagProductModel value)  $default,){
final _that = this;
switch (_that) {
case _BagProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BagProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _BagProductModel() when $default != null:
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
case _BagProductModel() when $default != null:
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
case _BagProductModel():
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
case _BagProductModel() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.price,_that.quantity,_that.size,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BagProductModel implements BagProductModel {
   _BagProductModel({required this.id, required this.name, required this.imageUrl, required this.price, required this.quantity, required this.size, required this.color});
  factory _BagProductModel.fromJson(Map<String, dynamic> json) => _$BagProductModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  double price;
@override final  int quantity;
@override final  String size;
@override final  String color;

/// Create a copy of BagProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BagProductModelCopyWith<_BagProductModel> get copyWith => __$BagProductModelCopyWithImpl<_BagProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BagProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BagProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.size, size) || other.size == size)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,price,quantity,size,color);

@override
String toString() {
  return 'BagProductModel(id: $id, name: $name, imageUrl: $imageUrl, price: $price, quantity: $quantity, size: $size, color: $color)';
}


}

/// @nodoc
abstract mixin class _$BagProductModelCopyWith<$Res> implements $BagProductModelCopyWith<$Res> {
  factory _$BagProductModelCopyWith(_BagProductModel value, $Res Function(_BagProductModel) _then) = __$BagProductModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, double price, int quantity, String size, String color
});




}
/// @nodoc
class __$BagProductModelCopyWithImpl<$Res>
    implements _$BagProductModelCopyWith<$Res> {
  __$BagProductModelCopyWithImpl(this._self, this._then);

  final _BagProductModel _self;
  final $Res Function(_BagProductModel) _then;

/// Create a copy of BagProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? price = null,Object? quantity = null,Object? size = null,Object? color = null,}) {
  return _then(_BagProductModel(
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
