// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminProductModel {

 String get id; String get title; String get description; double get price;@JsonKey(defaultValue: '') String get image;@JsonKey(defaultValue: []) List<String> get sizes;@JsonKey(defaultValue: []) List<String> get colors;@JsonKey(defaultValue: []) List<String> get sections;
/// Create a copy of AdminProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminProductModelCopyWith<AdminProductModel> get copyWith => _$AdminProductModelCopyWithImpl<AdminProductModel>(this as AdminProductModel, _$identity);

  /// Serializes this AdminProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.sizes, sizes)&&const DeepCollectionEquality().equals(other.colors, colors)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,image,const DeepCollectionEquality().hash(sizes),const DeepCollectionEquality().hash(colors),const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'AdminProductModel(id: $id, title: $title, description: $description, price: $price, image: $image, sizes: $sizes, colors: $colors, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $AdminProductModelCopyWith<$Res>  {
  factory $AdminProductModelCopyWith(AdminProductModel value, $Res Function(AdminProductModel) _then) = _$AdminProductModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, double price,@JsonKey(defaultValue: '') String image,@JsonKey(defaultValue: []) List<String> sizes,@JsonKey(defaultValue: []) List<String> colors,@JsonKey(defaultValue: []) List<String> sections
});




}
/// @nodoc
class _$AdminProductModelCopyWithImpl<$Res>
    implements $AdminProductModelCopyWith<$Res> {
  _$AdminProductModelCopyWithImpl(this._self, this._then);

  final AdminProductModel _self;
  final $Res Function(AdminProductModel) _then;

/// Create a copy of AdminProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? image = null,Object? sizes = null,Object? colors = null,Object? sections = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,sizes: null == sizes ? _self.sizes : sizes // ignore: cast_nullable_to_non_nullable
as List<String>,colors: null == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminProductModel].
extension AdminProductModelPatterns on AdminProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminProductModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price, @JsonKey(defaultValue: '')  String image, @JsonKey(defaultValue: [])  List<String> sizes, @JsonKey(defaultValue: [])  List<String> colors, @JsonKey(defaultValue: [])  List<String> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminProductModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price, @JsonKey(defaultValue: '')  String image, @JsonKey(defaultValue: [])  List<String> sizes, @JsonKey(defaultValue: [])  List<String> colors, @JsonKey(defaultValue: [])  List<String> sections)  $default,) {final _that = this;
switch (_that) {
case _AdminProductModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  double price, @JsonKey(defaultValue: '')  String image, @JsonKey(defaultValue: [])  List<String> sizes, @JsonKey(defaultValue: [])  List<String> colors, @JsonKey(defaultValue: [])  List<String> sections)?  $default,) {final _that = this;
switch (_that) {
case _AdminProductModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.image,_that.sizes,_that.colors,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminProductModel implements AdminProductModel {
  const _AdminProductModel({required this.id, required this.title, required this.description, required this.price, @JsonKey(defaultValue: '') required this.image, @JsonKey(defaultValue: []) required final  List<String> sizes, @JsonKey(defaultValue: []) required final  List<String> colors, @JsonKey(defaultValue: []) required final  List<String> sections}): _sizes = sizes,_colors = colors,_sections = sections;
  factory _AdminProductModel.fromJson(Map<String, dynamic> json) => _$AdminProductModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  double price;
@override@JsonKey(defaultValue: '') final  String image;
 final  List<String> _sizes;
@override@JsonKey(defaultValue: []) List<String> get sizes {
  if (_sizes is EqualUnmodifiableListView) return _sizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sizes);
}

 final  List<String> _colors;
@override@JsonKey(defaultValue: []) List<String> get colors {
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colors);
}

 final  List<String> _sections;
@override@JsonKey(defaultValue: []) List<String> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of AdminProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminProductModelCopyWith<_AdminProductModel> get copyWith => __$AdminProductModelCopyWithImpl<_AdminProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._sizes, _sizes)&&const DeepCollectionEquality().equals(other._colors, _colors)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,image,const DeepCollectionEquality().hash(_sizes),const DeepCollectionEquality().hash(_colors),const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'AdminProductModel(id: $id, title: $title, description: $description, price: $price, image: $image, sizes: $sizes, colors: $colors, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$AdminProductModelCopyWith<$Res> implements $AdminProductModelCopyWith<$Res> {
  factory _$AdminProductModelCopyWith(_AdminProductModel value, $Res Function(_AdminProductModel) _then) = __$AdminProductModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, double price,@JsonKey(defaultValue: '') String image,@JsonKey(defaultValue: []) List<String> sizes,@JsonKey(defaultValue: []) List<String> colors,@JsonKey(defaultValue: []) List<String> sections
});




}
/// @nodoc
class __$AdminProductModelCopyWithImpl<$Res>
    implements _$AdminProductModelCopyWith<$Res> {
  __$AdminProductModelCopyWithImpl(this._self, this._then);

  final _AdminProductModel _self;
  final $Res Function(_AdminProductModel) _then;

/// Create a copy of AdminProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? image = null,Object? sizes = null,Object? colors = null,Object? sections = null,}) {
  return _then(_AdminProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,sizes: null == sizes ? _self._sizes : sizes // ignore: cast_nullable_to_non_nullable
as List<String>,colors: null == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
