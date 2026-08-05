// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_list_paged_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionListPagedState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionListPagedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionListPagedState()';
}


}

/// @nodoc
class $TransactionListPagedStateCopyWith<$Res>  {
$TransactionListPagedStateCopyWith(TransactionListPagedState _, $Res Function(TransactionListPagedState) __);
}


/// Adds pattern-matching-related methods to [TransactionListPagedState].
extension TransactionListPagedStatePatterns on TransactionListPagedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TransactionListPagedInitial value)?  initial,TResult Function( _TransactionListPagedLoading value)?  loading,TResult Function( _TransactionListPagedLoaded value)?  loaded,TResult Function( _TransactionListPagedError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionListPagedInitial() when initial != null:
return initial(_that);case _TransactionListPagedLoading() when loading != null:
return loading(_that);case _TransactionListPagedLoaded() when loaded != null:
return loaded(_that);case _TransactionListPagedError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TransactionListPagedInitial value)  initial,required TResult Function( _TransactionListPagedLoading value)  loading,required TResult Function( _TransactionListPagedLoaded value)  loaded,required TResult Function( _TransactionListPagedError value)  error,}){
final _that = this;
switch (_that) {
case _TransactionListPagedInitial():
return initial(_that);case _TransactionListPagedLoading():
return loading(_that);case _TransactionListPagedLoaded():
return loaded(_that);case _TransactionListPagedError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TransactionListPagedInitial value)?  initial,TResult? Function( _TransactionListPagedLoading value)?  loading,TResult? Function( _TransactionListPagedLoaded value)?  loaded,TResult? Function( _TransactionListPagedError value)?  error,}){
final _that = this;
switch (_that) {
case _TransactionListPagedInitial() when initial != null:
return initial(_that);case _TransactionListPagedLoading() when loading != null:
return loading(_that);case _TransactionListPagedLoaded() when loaded != null:
return loaded(_that);case _TransactionListPagedError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<TransactionEntity> transactions)?  loading,TResult Function( List<TransactionEntity> transactions)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionListPagedInitial() when initial != null:
return initial();case _TransactionListPagedLoading() when loading != null:
return loading(_that.transactions);case _TransactionListPagedLoaded() when loaded != null:
return loaded(_that.transactions);case _TransactionListPagedError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<TransactionEntity> transactions)  loading,required TResult Function( List<TransactionEntity> transactions)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _TransactionListPagedInitial():
return initial();case _TransactionListPagedLoading():
return loading(_that.transactions);case _TransactionListPagedLoaded():
return loaded(_that.transactions);case _TransactionListPagedError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<TransactionEntity> transactions)?  loading,TResult? Function( List<TransactionEntity> transactions)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _TransactionListPagedInitial() when initial != null:
return initial();case _TransactionListPagedLoading() when loading != null:
return loading(_that.transactions);case _TransactionListPagedLoaded() when loaded != null:
return loaded(_that.transactions);case _TransactionListPagedError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionListPagedInitial implements TransactionListPagedState {
   _TransactionListPagedInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListPagedInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionListPagedState.initial()';
}


}




/// @nodoc


class _TransactionListPagedLoading implements TransactionListPagedState {
   _TransactionListPagedLoading({required final  List<TransactionEntity> transactions}): _transactions = transactions;
  

 final  List<TransactionEntity> _transactions;
 List<TransactionEntity> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of TransactionListPagedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListPagedLoadingCopyWith<_TransactionListPagedLoading> get copyWith => __$TransactionListPagedLoadingCopyWithImpl<_TransactionListPagedLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListPagedLoading&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'TransactionListPagedState.loading(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$TransactionListPagedLoadingCopyWith<$Res> implements $TransactionListPagedStateCopyWith<$Res> {
  factory _$TransactionListPagedLoadingCopyWith(_TransactionListPagedLoading value, $Res Function(_TransactionListPagedLoading) _then) = __$TransactionListPagedLoadingCopyWithImpl;
@useResult
$Res call({
 List<TransactionEntity> transactions
});




}
/// @nodoc
class __$TransactionListPagedLoadingCopyWithImpl<$Res>
    implements _$TransactionListPagedLoadingCopyWith<$Res> {
  __$TransactionListPagedLoadingCopyWithImpl(this._self, this._then);

  final _TransactionListPagedLoading _self;
  final $Res Function(_TransactionListPagedLoading) _then;

/// Create a copy of TransactionListPagedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(_TransactionListPagedLoading(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionEntity>,
  ));
}


}

/// @nodoc


class _TransactionListPagedLoaded implements TransactionListPagedState {
   _TransactionListPagedLoaded({required final  List<TransactionEntity> transactions}): _transactions = transactions;
  

 final  List<TransactionEntity> _transactions;
 List<TransactionEntity> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of TransactionListPagedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListPagedLoadedCopyWith<_TransactionListPagedLoaded> get copyWith => __$TransactionListPagedLoadedCopyWithImpl<_TransactionListPagedLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListPagedLoaded&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'TransactionListPagedState.loaded(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$TransactionListPagedLoadedCopyWith<$Res> implements $TransactionListPagedStateCopyWith<$Res> {
  factory _$TransactionListPagedLoadedCopyWith(_TransactionListPagedLoaded value, $Res Function(_TransactionListPagedLoaded) _then) = __$TransactionListPagedLoadedCopyWithImpl;
@useResult
$Res call({
 List<TransactionEntity> transactions
});




}
/// @nodoc
class __$TransactionListPagedLoadedCopyWithImpl<$Res>
    implements _$TransactionListPagedLoadedCopyWith<$Res> {
  __$TransactionListPagedLoadedCopyWithImpl(this._self, this._then);

  final _TransactionListPagedLoaded _self;
  final $Res Function(_TransactionListPagedLoaded) _then;

/// Create a copy of TransactionListPagedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(_TransactionListPagedLoaded(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionEntity>,
  ));
}


}

/// @nodoc


class _TransactionListPagedError implements TransactionListPagedState {
   _TransactionListPagedError(this.message);
  

 final  String message;

/// Create a copy of TransactionListPagedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListPagedErrorCopyWith<_TransactionListPagedError> get copyWith => __$TransactionListPagedErrorCopyWithImpl<_TransactionListPagedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListPagedError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransactionListPagedState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TransactionListPagedErrorCopyWith<$Res> implements $TransactionListPagedStateCopyWith<$Res> {
  factory _$TransactionListPagedErrorCopyWith(_TransactionListPagedError value, $Res Function(_TransactionListPagedError) _then) = __$TransactionListPagedErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TransactionListPagedErrorCopyWithImpl<$Res>
    implements _$TransactionListPagedErrorCopyWith<$Res> {
  __$TransactionListPagedErrorCopyWithImpl(this._self, this._then);

  final _TransactionListPagedError _self;
  final $Res Function(_TransactionListPagedError) _then;

/// Create a copy of TransactionListPagedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TransactionListPagedError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
