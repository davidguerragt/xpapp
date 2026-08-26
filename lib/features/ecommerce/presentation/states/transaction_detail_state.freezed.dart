// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailState()';
}


}

/// @nodoc
class $TransactionDetailStateCopyWith<$Res>  {
$TransactionDetailStateCopyWith(TransactionDetailState _, $Res Function(TransactionDetailState) __);
}


/// Adds pattern-matching-related methods to [TransactionDetailState].
extension TransactionDetailStatePatterns on TransactionDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TransactionDetailInitial value)?  initial,TResult Function( _TransactionDetailLoading value)?  loading,TResult Function( _TransactionDetailLoaded value)?  loaded,TResult Function( _TransactionDetailError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionDetailInitial() when initial != null:
return initial(_that);case _TransactionDetailLoading() when loading != null:
return loading(_that);case _TransactionDetailLoaded() when loaded != null:
return loaded(_that);case _TransactionDetailError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TransactionDetailInitial value)  initial,required TResult Function( _TransactionDetailLoading value)  loading,required TResult Function( _TransactionDetailLoaded value)  loaded,required TResult Function( _TransactionDetailError value)  error,}){
final _that = this;
switch (_that) {
case _TransactionDetailInitial():
return initial(_that);case _TransactionDetailLoading():
return loading(_that);case _TransactionDetailLoaded():
return loaded(_that);case _TransactionDetailError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TransactionDetailInitial value)?  initial,TResult? Function( _TransactionDetailLoading value)?  loading,TResult? Function( _TransactionDetailLoaded value)?  loaded,TResult? Function( _TransactionDetailError value)?  error,}){
final _that = this;
switch (_that) {
case _TransactionDetailInitial() when initial != null:
return initial(_that);case _TransactionDetailLoading() when loading != null:
return loading(_that);case _TransactionDetailLoaded() when loaded != null:
return loaded(_that);case _TransactionDetailError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( TransactionEntity transaction)?  loading,TResult Function( TransactionEntity transaction)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionDetailInitial() when initial != null:
return initial();case _TransactionDetailLoading() when loading != null:
return loading(_that.transaction);case _TransactionDetailLoaded() when loaded != null:
return loaded(_that.transaction);case _TransactionDetailError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( TransactionEntity transaction)  loading,required TResult Function( TransactionEntity transaction)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _TransactionDetailInitial():
return initial();case _TransactionDetailLoading():
return loading(_that.transaction);case _TransactionDetailLoaded():
return loaded(_that.transaction);case _TransactionDetailError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( TransactionEntity transaction)?  loading,TResult? Function( TransactionEntity transaction)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _TransactionDetailInitial() when initial != null:
return initial();case _TransactionDetailLoading() when loading != null:
return loading(_that.transaction);case _TransactionDetailLoaded() when loaded != null:
return loaded(_that.transaction);case _TransactionDetailError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionDetailInitial implements TransactionDetailState {
   _TransactionDetailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailState.initial()';
}


}




/// @nodoc


class _TransactionDetailLoading implements TransactionDetailState {
   _TransactionDetailLoading({required this.transaction});
  

 final  TransactionEntity transaction;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailLoadingCopyWith<_TransactionDetailLoading> get copyWith => __$TransactionDetailLoadingCopyWithImpl<_TransactionDetailLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailLoading&&(identical(other.transaction, transaction) || other.transaction == transaction));
}


@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'TransactionDetailState.loading(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailLoadingCopyWith<$Res> implements $TransactionDetailStateCopyWith<$Res> {
  factory _$TransactionDetailLoadingCopyWith(_TransactionDetailLoading value, $Res Function(_TransactionDetailLoading) _then) = __$TransactionDetailLoadingCopyWithImpl;
@useResult
$Res call({
 TransactionEntity transaction
});


$TransactionEntityCopyWith<$Res> get transaction;

}
/// @nodoc
class __$TransactionDetailLoadingCopyWithImpl<$Res>
    implements _$TransactionDetailLoadingCopyWith<$Res> {
  __$TransactionDetailLoadingCopyWithImpl(this._self, this._then);

  final _TransactionDetailLoading _self;
  final $Res Function(_TransactionDetailLoading) _then;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_TransactionDetailLoading(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionEntity,
  ));
}

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<$Res> get transaction {
  
  return $TransactionEntityCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

/// @nodoc


class _TransactionDetailLoaded implements TransactionDetailState {
   _TransactionDetailLoaded({required this.transaction});
  

 final  TransactionEntity transaction;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailLoadedCopyWith<_TransactionDetailLoaded> get copyWith => __$TransactionDetailLoadedCopyWithImpl<_TransactionDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailLoaded&&(identical(other.transaction, transaction) || other.transaction == transaction));
}


@override
int get hashCode => Object.hash(runtimeType,transaction);

@override
String toString() {
  return 'TransactionDetailState.loaded(transaction: $transaction)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailLoadedCopyWith<$Res> implements $TransactionDetailStateCopyWith<$Res> {
  factory _$TransactionDetailLoadedCopyWith(_TransactionDetailLoaded value, $Res Function(_TransactionDetailLoaded) _then) = __$TransactionDetailLoadedCopyWithImpl;
@useResult
$Res call({
 TransactionEntity transaction
});


$TransactionEntityCopyWith<$Res> get transaction;

}
/// @nodoc
class __$TransactionDetailLoadedCopyWithImpl<$Res>
    implements _$TransactionDetailLoadedCopyWith<$Res> {
  __$TransactionDetailLoadedCopyWithImpl(this._self, this._then);

  final _TransactionDetailLoaded _self;
  final $Res Function(_TransactionDetailLoaded) _then;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transaction = null,}) {
  return _then(_TransactionDetailLoaded(
transaction: null == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as TransactionEntity,
  ));
}

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<$Res> get transaction {
  
  return $TransactionEntityCopyWith<$Res>(_self.transaction, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}
}

/// @nodoc


class _TransactionDetailError implements TransactionDetailState {
   _TransactionDetailError(this.message);
  

 final  String message;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailErrorCopyWith<_TransactionDetailError> get copyWith => __$TransactionDetailErrorCopyWithImpl<_TransactionDetailError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransactionDetailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailErrorCopyWith<$Res> implements $TransactionDetailStateCopyWith<$Res> {
  factory _$TransactionDetailErrorCopyWith(_TransactionDetailError value, $Res Function(_TransactionDetailError) _then) = __$TransactionDetailErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TransactionDetailErrorCopyWithImpl<$Res>
    implements _$TransactionDetailErrorCopyWith<$Res> {
  __$TransactionDetailErrorCopyWithImpl(this._self, this._then);

  final _TransactionDetailError _self;
  final $Res Function(_TransactionDetailError) _then;

/// Create a copy of TransactionDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TransactionDetailError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
