// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState()';
}


}

/// @nodoc
class $AdminProductStateCopyWith<$Res>  {
$AdminProductStateCopyWith(AdminProductState _, $Res Function(AdminProductState) __);
}


/// Adds pattern-matching-related methods to [AdminProductState].
extension AdminProductStatePatterns on AdminProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,TResult Function( _Saving value)?  saving,TResult Function( _Saved value)?  saved,TResult Function( _Deleting value)?  deleting,TResult Function( _Deleted value)?  deleted,TResult Function( _PickingImage value)?  pickingImage,TResult Function( _ImagePicked value)?  imagePicked,TResult Function( _CapturingImage value)?  capturingImage,TResult Function( _ImageCaptured value)?  imageCaptured,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Saving() when saving != null:
return saving(_that);case _Saved() when saved != null:
return saved(_that);case _Deleting() when deleting != null:
return deleting(_that);case _Deleted() when deleted != null:
return deleted(_that);case _PickingImage() when pickingImage != null:
return pickingImage(_that);case _ImagePicked() when imagePicked != null:
return imagePicked(_that);case _CapturingImage() when capturingImage != null:
return capturingImage(_that);case _ImageCaptured() when imageCaptured != null:
return imageCaptured(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,required TResult Function( _Saving value)  saving,required TResult Function( _Saved value)  saved,required TResult Function( _Deleting value)  deleting,required TResult Function( _Deleted value)  deleted,required TResult Function( _PickingImage value)  pickingImage,required TResult Function( _ImagePicked value)  imagePicked,required TResult Function( _CapturingImage value)  capturingImage,required TResult Function( _ImageCaptured value)  imageCaptured,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _Saving():
return saving(_that);case _Saved():
return saved(_that);case _Deleting():
return deleting(_that);case _Deleted():
return deleted(_that);case _PickingImage():
return pickingImage(_that);case _ImagePicked():
return imagePicked(_that);case _CapturingImage():
return capturingImage(_that);case _ImageCaptured():
return imageCaptured(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,TResult? Function( _Saving value)?  saving,TResult? Function( _Saved value)?  saved,TResult? Function( _Deleting value)?  deleting,TResult? Function( _Deleted value)?  deleted,TResult? Function( _PickingImage value)?  pickingImage,TResult? Function( _ImagePicked value)?  imagePicked,TResult? Function( _CapturingImage value)?  capturingImage,TResult? Function( _ImageCaptured value)?  imageCaptured,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Saving() when saving != null:
return saving(_that);case _Saved() when saved != null:
return saved(_that);case _Deleting() when deleting != null:
return deleting(_that);case _Deleted() when deleted != null:
return deleted(_that);case _PickingImage() when pickingImage != null:
return pickingImage(_that);case _ImagePicked() when imagePicked != null:
return imagePicked(_that);case _CapturingImage() when capturingImage != null:
return capturingImage(_that);case _ImageCaptured() when imageCaptured != null:
return imageCaptured(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isLoading)?  loading,TResult Function( AdminProductEntity product)?  loaded,TResult Function( String message)?  error,TResult Function( bool isSaving)?  saving,TResult Function( AdminProductEntity product)?  saved,TResult Function( bool isDeleting)?  deleting,TResult Function()?  deleted,TResult Function( bool isPicking)?  pickingImage,TResult Function( Object image)?  imagePicked,TResult Function( bool isCapturing)?  capturingImage,TResult Function( Object image)?  imageCaptured,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.isLoading);case _Loaded() when loaded != null:
return loaded(_that.product);case _Error() when error != null:
return error(_that.message);case _Saving() when saving != null:
return saving(_that.isSaving);case _Saved() when saved != null:
return saved(_that.product);case _Deleting() when deleting != null:
return deleting(_that.isDeleting);case _Deleted() when deleted != null:
return deleted();case _PickingImage() when pickingImage != null:
return pickingImage(_that.isPicking);case _ImagePicked() when imagePicked != null:
return imagePicked(_that.image);case _CapturingImage() when capturingImage != null:
return capturingImage(_that.isCapturing);case _ImageCaptured() when imageCaptured != null:
return imageCaptured(_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isLoading)  loading,required TResult Function( AdminProductEntity product)  loaded,required TResult Function( String message)  error,required TResult Function( bool isSaving)  saving,required TResult Function( AdminProductEntity product)  saved,required TResult Function( bool isDeleting)  deleting,required TResult Function()  deleted,required TResult Function( bool isPicking)  pickingImage,required TResult Function( Object image)  imagePicked,required TResult Function( bool isCapturing)  capturingImage,required TResult Function( Object image)  imageCaptured,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading(_that.isLoading);case _Loaded():
return loaded(_that.product);case _Error():
return error(_that.message);case _Saving():
return saving(_that.isSaving);case _Saved():
return saved(_that.product);case _Deleting():
return deleting(_that.isDeleting);case _Deleted():
return deleted();case _PickingImage():
return pickingImage(_that.isPicking);case _ImagePicked():
return imagePicked(_that.image);case _CapturingImage():
return capturingImage(_that.isCapturing);case _ImageCaptured():
return imageCaptured(_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isLoading)?  loading,TResult? Function( AdminProductEntity product)?  loaded,TResult? Function( String message)?  error,TResult? Function( bool isSaving)?  saving,TResult? Function( AdminProductEntity product)?  saved,TResult? Function( bool isDeleting)?  deleting,TResult? Function()?  deleted,TResult? Function( bool isPicking)?  pickingImage,TResult? Function( Object image)?  imagePicked,TResult? Function( bool isCapturing)?  capturingImage,TResult? Function( Object image)?  imageCaptured,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.isLoading);case _Loaded() when loaded != null:
return loaded(_that.product);case _Error() when error != null:
return error(_that.message);case _Saving() when saving != null:
return saving(_that.isSaving);case _Saved() when saved != null:
return saved(_that.product);case _Deleting() when deleting != null:
return deleting(_that.isDeleting);case _Deleted() when deleted != null:
return deleted();case _PickingImage() when pickingImage != null:
return pickingImage(_that.isPicking);case _ImagePicked() when imagePicked != null:
return imagePicked(_that.image);case _CapturingImage() when capturingImage != null:
return capturingImage(_that.isCapturing);case _ImageCaptured() when imageCaptured != null:
return imageCaptured(_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AdminProductState {
   _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState.initial()';
}


}




/// @nodoc


class _Loading implements AdminProductState {
   _Loading({required this.isLoading});
  

 final  bool isLoading;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AdminProductState.loading(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(_Loading(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Loaded implements AdminProductState {
   _Loaded({required this.product});
  

 final  AdminProductEntity product;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'AdminProductState.loaded(product: $product)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 AdminProductEntity product
});


$AdminProductEntityCopyWith<$Res> get product;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_Loaded(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as AdminProductEntity,
  ));
}

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminProductEntityCopyWith<$Res> get product {
  
  return $AdminProductEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class _Error implements AdminProductState {
   _Error({required this.message});
  

 final  String message;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AdminProductState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Saving implements AdminProductState {
   _Saving({required this.isSaving});
  

 final  bool isSaving;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavingCopyWith<_Saving> get copyWith => __$SavingCopyWithImpl<_Saving>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Saving&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,isSaving);

@override
String toString() {
  return 'AdminProductState.saving(isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$SavingCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$SavingCopyWith(_Saving value, $Res Function(_Saving) _then) = __$SavingCopyWithImpl;
@useResult
$Res call({
 bool isSaving
});




}
/// @nodoc
class __$SavingCopyWithImpl<$Res>
    implements _$SavingCopyWith<$Res> {
  __$SavingCopyWithImpl(this._self, this._then);

  final _Saving _self;
  final $Res Function(_Saving) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSaving = null,}) {
  return _then(_Saving(
isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Saved implements AdminProductState {
   _Saved({required this.product});
  

 final  AdminProductEntity product;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedCopyWith<_Saved> get copyWith => __$SavedCopyWithImpl<_Saved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Saved&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'AdminProductState.saved(product: $product)';
}


}

/// @nodoc
abstract mixin class _$SavedCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) _then) = __$SavedCopyWithImpl;
@useResult
$Res call({
 AdminProductEntity product
});


$AdminProductEntityCopyWith<$Res> get product;

}
/// @nodoc
class __$SavedCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(this._self, this._then);

  final _Saved _self;
  final $Res Function(_Saved) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(_Saved(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as AdminProductEntity,
  ));
}

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminProductEntityCopyWith<$Res> get product {
  
  return $AdminProductEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class _Deleting implements AdminProductState {
   _Deleting({required this.isDeleting});
  

 final  bool isDeleting;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletingCopyWith<_Deleting> get copyWith => __$DeletingCopyWithImpl<_Deleting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deleting&&(identical(other.isDeleting, isDeleting) || other.isDeleting == isDeleting));
}


@override
int get hashCode => Object.hash(runtimeType,isDeleting);

@override
String toString() {
  return 'AdminProductState.deleting(isDeleting: $isDeleting)';
}


}

/// @nodoc
abstract mixin class _$DeletingCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$DeletingCopyWith(_Deleting value, $Res Function(_Deleting) _then) = __$DeletingCopyWithImpl;
@useResult
$Res call({
 bool isDeleting
});




}
/// @nodoc
class __$DeletingCopyWithImpl<$Res>
    implements _$DeletingCopyWith<$Res> {
  __$DeletingCopyWithImpl(this._self, this._then);

  final _Deleting _self;
  final $Res Function(_Deleting) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDeleting = null,}) {
  return _then(_Deleting(
isDeleting: null == isDeleting ? _self.isDeleting : isDeleting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Deleted implements AdminProductState {
   _Deleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AdminProductState.deleted()';
}


}




/// @nodoc


class _PickingImage implements AdminProductState {
   _PickingImage({required this.isPicking});
  

 final  bool isPicking;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickingImageCopyWith<_PickingImage> get copyWith => __$PickingImageCopyWithImpl<_PickingImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickingImage&&(identical(other.isPicking, isPicking) || other.isPicking == isPicking));
}


@override
int get hashCode => Object.hash(runtimeType,isPicking);

@override
String toString() {
  return 'AdminProductState.pickingImage(isPicking: $isPicking)';
}


}

/// @nodoc
abstract mixin class _$PickingImageCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$PickingImageCopyWith(_PickingImage value, $Res Function(_PickingImage) _then) = __$PickingImageCopyWithImpl;
@useResult
$Res call({
 bool isPicking
});




}
/// @nodoc
class __$PickingImageCopyWithImpl<$Res>
    implements _$PickingImageCopyWith<$Res> {
  __$PickingImageCopyWithImpl(this._self, this._then);

  final _PickingImage _self;
  final $Res Function(_PickingImage) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPicking = null,}) {
  return _then(_PickingImage(
isPicking: null == isPicking ? _self.isPicking : isPicking // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ImagePicked implements AdminProductState {
   _ImagePicked({required this.image});
  

 final  Object image;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImagePickedCopyWith<_ImagePicked> get copyWith => __$ImagePickedCopyWithImpl<_ImagePicked>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImagePicked&&const DeepCollectionEquality().equals(other.image, image));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(image));

@override
String toString() {
  return 'AdminProductState.imagePicked(image: $image)';
}


}

/// @nodoc
abstract mixin class _$ImagePickedCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$ImagePickedCopyWith(_ImagePicked value, $Res Function(_ImagePicked) _then) = __$ImagePickedCopyWithImpl;
@useResult
$Res call({
 Object image
});




}
/// @nodoc
class __$ImagePickedCopyWithImpl<$Res>
    implements _$ImagePickedCopyWith<$Res> {
  __$ImagePickedCopyWithImpl(this._self, this._then);

  final _ImagePicked _self;
  final $Res Function(_ImagePicked) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_ImagePicked(
image: null == image ? _self.image : image ,
  ));
}


}

/// @nodoc


class _CapturingImage implements AdminProductState {
   _CapturingImage({required this.isCapturing});
  

 final  bool isCapturing;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CapturingImageCopyWith<_CapturingImage> get copyWith => __$CapturingImageCopyWithImpl<_CapturingImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CapturingImage&&(identical(other.isCapturing, isCapturing) || other.isCapturing == isCapturing));
}


@override
int get hashCode => Object.hash(runtimeType,isCapturing);

@override
String toString() {
  return 'AdminProductState.capturingImage(isCapturing: $isCapturing)';
}


}

/// @nodoc
abstract mixin class _$CapturingImageCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$CapturingImageCopyWith(_CapturingImage value, $Res Function(_CapturingImage) _then) = __$CapturingImageCopyWithImpl;
@useResult
$Res call({
 bool isCapturing
});




}
/// @nodoc
class __$CapturingImageCopyWithImpl<$Res>
    implements _$CapturingImageCopyWith<$Res> {
  __$CapturingImageCopyWithImpl(this._self, this._then);

  final _CapturingImage _self;
  final $Res Function(_CapturingImage) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isCapturing = null,}) {
  return _then(_CapturingImage(
isCapturing: null == isCapturing ? _self.isCapturing : isCapturing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ImageCaptured implements AdminProductState {
   _ImageCaptured({required this.image});
  

 final  Object image;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageCapturedCopyWith<_ImageCaptured> get copyWith => __$ImageCapturedCopyWithImpl<_ImageCaptured>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageCaptured&&const DeepCollectionEquality().equals(other.image, image));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(image));

@override
String toString() {
  return 'AdminProductState.imageCaptured(image: $image)';
}


}

/// @nodoc
abstract mixin class _$ImageCapturedCopyWith<$Res> implements $AdminProductStateCopyWith<$Res> {
  factory _$ImageCapturedCopyWith(_ImageCaptured value, $Res Function(_ImageCaptured) _then) = __$ImageCapturedCopyWithImpl;
@useResult
$Res call({
 Object image
});




}
/// @nodoc
class __$ImageCapturedCopyWithImpl<$Res>
    implements _$ImageCapturedCopyWith<$Res> {
  __$ImageCapturedCopyWithImpl(this._self, this._then);

  final _ImageCaptured _self;
  final $Res Function(_ImageCaptured) _then;

/// Create a copy of AdminProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_ImageCaptured(
image: null == image ? _self.image : image ,
  ));
}


}

// dart format on
