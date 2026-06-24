// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_abc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionAbcState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionAbcState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionAbcState()';
}


}

/// @nodoc
class $SectionAbcStateCopyWith<$Res>  {
$SectionAbcStateCopyWith(SectionAbcState _, $Res Function(SectionAbcState) __);
}


/// Adds pattern-matching-related methods to [SectionAbcState].
extension SectionAbcStatePatterns on SectionAbcState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Selecting value)?  selecting,TResult Function( _Selected value)?  selected,TResult Function( _Saving value)?  saving,TResult Function( _Saved value)?  saved,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Selecting() when selecting != null:
return selecting(_that);case _Selected() when selected != null:
return selected(_that);case _Saving() when saving != null:
return saving(_that);case _Saved() when saved != null:
return saved(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Selecting value)  selecting,required TResult Function( _Selected value)  selected,required TResult Function( _Saving value)  saving,required TResult Function( _Saved value)  saved,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Selecting():
return selecting(_that);case _Selected():
return selected(_that);case _Saving():
return saving(_that);case _Saved():
return saved(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Selecting value)?  selecting,TResult? Function( _Selected value)?  selected,TResult? Function( _Saving value)?  saving,TResult? Function( _Saved value)?  saved,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Selecting() when selecting != null:
return selecting(_that);case _Selected() when selected != null:
return selected(_that);case _Saving() when saving != null:
return saving(_that);case _Saved() when saved != null:
return saved(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isLoading)?  loading,TResult Function( List<SectionEntity> sections)?  loaded,TResult Function( bool isSelecting)?  selecting,TResult Function( SectionEntity section)?  selected,TResult Function( bool isSaving)?  saving,TResult Function( SectionEntity section)?  saved,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.isLoading);case _Loaded() when loaded != null:
return loaded(_that.sections);case _Selecting() when selecting != null:
return selecting(_that.isSelecting);case _Selected() when selected != null:
return selected(_that.section);case _Saving() when saving != null:
return saving(_that.isSaving);case _Saved() when saved != null:
return saved(_that.section);case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isLoading)  loading,required TResult Function( List<SectionEntity> sections)  loaded,required TResult Function( bool isSelecting)  selecting,required TResult Function( SectionEntity section)  selected,required TResult Function( bool isSaving)  saving,required TResult Function( SectionEntity section)  saved,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading(_that.isLoading);case _Loaded():
return loaded(_that.sections);case _Selecting():
return selecting(_that.isSelecting);case _Selected():
return selected(_that.section);case _Saving():
return saving(_that.isSaving);case _Saved():
return saved(_that.section);case _Error():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isLoading)?  loading,TResult? Function( List<SectionEntity> sections)?  loaded,TResult? Function( bool isSelecting)?  selecting,TResult? Function( SectionEntity section)?  selected,TResult? Function( bool isSaving)?  saving,TResult? Function( SectionEntity section)?  saved,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.isLoading);case _Loaded() when loaded != null:
return loaded(_that.sections);case _Selecting() when selecting != null:
return selecting(_that.isSelecting);case _Selected() when selected != null:
return selected(_that.section);case _Saving() when saving != null:
return saving(_that.isSaving);case _Saved() when saved != null:
return saved(_that.section);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SectionAbcState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionAbcState.initial()';
}


}




/// @nodoc


class _Loading implements SectionAbcState {
  const _Loading({required this.isLoading});
  

 final  bool isLoading;

/// Create a copy of SectionAbcState
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
  return 'SectionAbcState.loading(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $SectionAbcStateCopyWith<$Res> {
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

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(_Loading(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Loaded implements SectionAbcState {
  const _Loaded({required final  List<SectionEntity> sections}): _sections = sections;
  

 final  List<SectionEntity> _sections;
 List<SectionEntity> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._sections, _sections));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'SectionAbcState.loaded(sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $SectionAbcStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<SectionEntity> sections
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sections = null,}) {
  return _then(_Loaded(
sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<SectionEntity>,
  ));
}


}

/// @nodoc


class _Selecting implements SectionAbcState {
  const _Selecting({required this.isSelecting});
  

 final  bool isSelecting;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectingCopyWith<_Selecting> get copyWith => __$SelectingCopyWithImpl<_Selecting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Selecting&&(identical(other.isSelecting, isSelecting) || other.isSelecting == isSelecting));
}


@override
int get hashCode => Object.hash(runtimeType,isSelecting);

@override
String toString() {
  return 'SectionAbcState.selecting(isSelecting: $isSelecting)';
}


}

/// @nodoc
abstract mixin class _$SelectingCopyWith<$Res> implements $SectionAbcStateCopyWith<$Res> {
  factory _$SelectingCopyWith(_Selecting value, $Res Function(_Selecting) _then) = __$SelectingCopyWithImpl;
@useResult
$Res call({
 bool isSelecting
});




}
/// @nodoc
class __$SelectingCopyWithImpl<$Res>
    implements _$SelectingCopyWith<$Res> {
  __$SelectingCopyWithImpl(this._self, this._then);

  final _Selecting _self;
  final $Res Function(_Selecting) _then;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSelecting = null,}) {
  return _then(_Selecting(
isSelecting: null == isSelecting ? _self.isSelecting : isSelecting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Selected implements SectionAbcState {
  const _Selected({required this.section});
  

 final  SectionEntity section;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectedCopyWith<_Selected> get copyWith => __$SelectedCopyWithImpl<_Selected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Selected&&(identical(other.section, section) || other.section == section));
}


@override
int get hashCode => Object.hash(runtimeType,section);

@override
String toString() {
  return 'SectionAbcState.selected(section: $section)';
}


}

/// @nodoc
abstract mixin class _$SelectedCopyWith<$Res> implements $SectionAbcStateCopyWith<$Res> {
  factory _$SelectedCopyWith(_Selected value, $Res Function(_Selected) _then) = __$SelectedCopyWithImpl;
@useResult
$Res call({
 SectionEntity section
});


$SectionEntityCopyWith<$Res> get section;

}
/// @nodoc
class __$SelectedCopyWithImpl<$Res>
    implements _$SelectedCopyWith<$Res> {
  __$SelectedCopyWithImpl(this._self, this._then);

  final _Selected _self;
  final $Res Function(_Selected) _then;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? section = null,}) {
  return _then(_Selected(
section: null == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as SectionEntity,
  ));
}

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionEntityCopyWith<$Res> get section {
  
  return $SectionEntityCopyWith<$Res>(_self.section, (value) {
    return _then(_self.copyWith(section: value));
  });
}
}

/// @nodoc


class _Saving implements SectionAbcState {
  const _Saving({required this.isSaving});
  

 final  bool isSaving;

/// Create a copy of SectionAbcState
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
  return 'SectionAbcState.saving(isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$SavingCopyWith<$Res> implements $SectionAbcStateCopyWith<$Res> {
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

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSaving = null,}) {
  return _then(_Saving(
isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Saved implements SectionAbcState {
  const _Saved({required this.section});
  

 final  SectionEntity section;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedCopyWith<_Saved> get copyWith => __$SavedCopyWithImpl<_Saved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Saved&&(identical(other.section, section) || other.section == section));
}


@override
int get hashCode => Object.hash(runtimeType,section);

@override
String toString() {
  return 'SectionAbcState.saved(section: $section)';
}


}

/// @nodoc
abstract mixin class _$SavedCopyWith<$Res> implements $SectionAbcStateCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) _then) = __$SavedCopyWithImpl;
@useResult
$Res call({
 SectionEntity section
});


$SectionEntityCopyWith<$Res> get section;

}
/// @nodoc
class __$SavedCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(this._self, this._then);

  final _Saved _self;
  final $Res Function(_Saved) _then;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? section = null,}) {
  return _then(_Saved(
section: null == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as SectionEntity,
  ));
}

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionEntityCopyWith<$Res> get section {
  
  return $SectionEntityCopyWith<$Res>(_self.section, (value) {
    return _then(_self.copyWith(section: value));
  });
}
}

/// @nodoc


class _Error implements SectionAbcState {
  const _Error({required this.error});
  

 final  String error;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SectionAbcState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SectionAbcStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SectionAbcState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
