// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent()';
}


}

/// @nodoc
class $PermissionEventCopyWith<$Res>  {
$PermissionEventCopyWith(PermissionEvent _, $Res Function(PermissionEvent) __);
}


/// Adds pattern-matching-related methods to [PermissionEvent].
extension PermissionEventPatterns on PermissionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckCameraPermission value)?  checkCameraPermission,TResult Function( RequestCameraPermission value)?  requestCameraPermission,TResult Function( OpenSettings value)?  openSettings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckCameraPermission() when checkCameraPermission != null:
return checkCameraPermission(_that);case RequestCameraPermission() when requestCameraPermission != null:
return requestCameraPermission(_that);case OpenSettings() when openSettings != null:
return openSettings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckCameraPermission value)  checkCameraPermission,required TResult Function( RequestCameraPermission value)  requestCameraPermission,required TResult Function( OpenSettings value)  openSettings,}){
final _that = this;
switch (_that) {
case CheckCameraPermission():
return checkCameraPermission(_that);case RequestCameraPermission():
return requestCameraPermission(_that);case OpenSettings():
return openSettings(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckCameraPermission value)?  checkCameraPermission,TResult? Function( RequestCameraPermission value)?  requestCameraPermission,TResult? Function( OpenSettings value)?  openSettings,}){
final _that = this;
switch (_that) {
case CheckCameraPermission() when checkCameraPermission != null:
return checkCameraPermission(_that);case RequestCameraPermission() when requestCameraPermission != null:
return requestCameraPermission(_that);case OpenSettings() when openSettings != null:
return openSettings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkCameraPermission,TResult Function()?  requestCameraPermission,TResult Function()?  openSettings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckCameraPermission() when checkCameraPermission != null:
return checkCameraPermission();case RequestCameraPermission() when requestCameraPermission != null:
return requestCameraPermission();case OpenSettings() when openSettings != null:
return openSettings();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkCameraPermission,required TResult Function()  requestCameraPermission,required TResult Function()  openSettings,}) {final _that = this;
switch (_that) {
case CheckCameraPermission():
return checkCameraPermission();case RequestCameraPermission():
return requestCameraPermission();case OpenSettings():
return openSettings();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkCameraPermission,TResult? Function()?  requestCameraPermission,TResult? Function()?  openSettings,}) {final _that = this;
switch (_that) {
case CheckCameraPermission() when checkCameraPermission != null:
return checkCameraPermission();case RequestCameraPermission() when requestCameraPermission != null:
return requestCameraPermission();case OpenSettings() when openSettings != null:
return openSettings();case _:
  return null;

}
}

}

/// @nodoc


class CheckCameraPermission implements PermissionEvent {
  const CheckCameraPermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckCameraPermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent.checkCameraPermission()';
}


}




/// @nodoc


class RequestCameraPermission implements PermissionEvent {
  const RequestCameraPermission();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCameraPermission);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent.requestCameraPermission()';
}


}




/// @nodoc


class OpenSettings implements PermissionEvent {
  const OpenSettings();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenSettings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent.openSettings()';
}


}




// dart format on
