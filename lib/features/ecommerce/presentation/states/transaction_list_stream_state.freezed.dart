// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_list_stream_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionListState()';
}


}

/// @nodoc
class $TransactionListStateCopyWith<$Res>  {
$TransactionListStateCopyWith(TransactionListState _, $Res Function(TransactionListState) __);
}


/// Adds pattern-matching-related methods to [TransactionListState].
extension TransactionListStatePatterns on TransactionListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TransactionListInitial value)?  initial,TResult Function( _TransactionListLoading value)?  loading,TResult Function( _TransactionListLoaded value)?  loaded,TResult Function( _TransactionListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionListInitial() when initial != null:
return initial(_that);case _TransactionListLoading() when loading != null:
return loading(_that);case _TransactionListLoaded() when loaded != null:
return loaded(_that);case _TransactionListError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TransactionListInitial value)  initial,required TResult Function( _TransactionListLoading value)  loading,required TResult Function( _TransactionListLoaded value)  loaded,required TResult Function( _TransactionListError value)  error,}){
final _that = this;
switch (_that) {
case _TransactionListInitial():
return initial(_that);case _TransactionListLoading():
return loading(_that);case _TransactionListLoaded():
return loaded(_that);case _TransactionListError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TransactionListInitial value)?  initial,TResult? Function( _TransactionListLoading value)?  loading,TResult? Function( _TransactionListLoaded value)?  loaded,TResult? Function( _TransactionListError value)?  error,}){
final _that = this;
switch (_that) {
case _TransactionListInitial() when initial != null:
return initial(_that);case _TransactionListLoading() when loading != null:
return loading(_that);case _TransactionListLoaded() when loaded != null:
return loaded(_that);case _TransactionListError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<TransactionEntity> transactions)?  loading,TResult Function( Stream<List<TransactionEntity>> transactions)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionListInitial() when initial != null:
return initial();case _TransactionListLoading() when loading != null:
return loading(_that.transactions);case _TransactionListLoaded() when loaded != null:
return loaded(_that.transactions);case _TransactionListError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<TransactionEntity> transactions)  loading,required TResult Function( Stream<List<TransactionEntity>> transactions)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _TransactionListInitial():
return initial();case _TransactionListLoading():
return loading(_that.transactions);case _TransactionListLoaded():
return loaded(_that.transactions);case _TransactionListError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<TransactionEntity> transactions)?  loading,TResult? Function( Stream<List<TransactionEntity>> transactions)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _TransactionListInitial() when initial != null:
return initial();case _TransactionListLoading() when loading != null:
return loading(_that.transactions);case _TransactionListLoaded() when loaded != null:
return loaded(_that.transactions);case _TransactionListError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionListInitial implements TransactionListState {
   _TransactionListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionListState.initial()';
}


}




/// @nodoc


class _TransactionListLoading implements TransactionListState {
   _TransactionListLoading({required final  List<TransactionEntity> transactions}): _transactions = transactions;
  

 final  List<TransactionEntity> _transactions;
 List<TransactionEntity> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of TransactionListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListLoadingCopyWith<_TransactionListLoading> get copyWith => __$TransactionListLoadingCopyWithImpl<_TransactionListLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListLoading&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'TransactionListState.loading(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$TransactionListLoadingCopyWith<$Res> implements $TransactionListStateCopyWith<$Res> {
  factory _$TransactionListLoadingCopyWith(_TransactionListLoading value, $Res Function(_TransactionListLoading) _then) = __$TransactionListLoadingCopyWithImpl;
@useResult
$Res call({
 List<TransactionEntity> transactions
});




}
/// @nodoc
class __$TransactionListLoadingCopyWithImpl<$Res>
    implements _$TransactionListLoadingCopyWith<$Res> {
  __$TransactionListLoadingCopyWithImpl(this._self, this._then);

  final _TransactionListLoading _self;
  final $Res Function(_TransactionListLoading) _then;

/// Create a copy of TransactionListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(_TransactionListLoading(
transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionEntity>,
  ));
}


}

/// @nodoc


class _TransactionListLoaded implements TransactionListState {
   _TransactionListLoaded({required this.transactions});
  

 final  Stream<List<TransactionEntity>> transactions;

/// Create a copy of TransactionListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListLoadedCopyWith<_TransactionListLoaded> get copyWith => __$TransactionListLoadedCopyWithImpl<_TransactionListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListLoaded&&(identical(other.transactions, transactions) || other.transactions == transactions));
}


@override
int get hashCode => Object.hash(runtimeType,transactions);

@override
String toString() {
  return 'TransactionListState.loaded(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$TransactionListLoadedCopyWith<$Res> implements $TransactionListStateCopyWith<$Res> {
  factory _$TransactionListLoadedCopyWith(_TransactionListLoaded value, $Res Function(_TransactionListLoaded) _then) = __$TransactionListLoadedCopyWithImpl;
@useResult
$Res call({
 Stream<List<TransactionEntity>> transactions
});




}
/// @nodoc
class __$TransactionListLoadedCopyWithImpl<$Res>
    implements _$TransactionListLoadedCopyWith<$Res> {
  __$TransactionListLoadedCopyWithImpl(this._self, this._then);

  final _TransactionListLoaded _self;
  final $Res Function(_TransactionListLoaded) _then;

/// Create a copy of TransactionListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(_TransactionListLoaded(
transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as Stream<List<TransactionEntity>>,
  ));
}


}

/// @nodoc


class _TransactionListError implements TransactionListState {
   _TransactionListError(this.message);
  

 final  String message;

/// Create a copy of TransactionListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionListErrorCopyWith<_TransactionListError> get copyWith => __$TransactionListErrorCopyWithImpl<_TransactionListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionListError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransactionListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TransactionListErrorCopyWith<$Res> implements $TransactionListStateCopyWith<$Res> {
  factory _$TransactionListErrorCopyWith(_TransactionListError value, $Res Function(_TransactionListError) _then) = __$TransactionListErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TransactionListErrorCopyWithImpl<$Res>
    implements _$TransactionListErrorCopyWith<$Res> {
  __$TransactionListErrorCopyWithImpl(this._self, this._then);

  final _TransactionListError _self;
  final $Res Function(_TransactionListError) _then;

/// Create a copy of TransactionListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TransactionListError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
