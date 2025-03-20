// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips_carousel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TripsCarouselState {

 int get currentIndex; List<Trip> get trips;
/// Create a copy of TripsCarouselState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripsCarouselStateCopyWith<TripsCarouselState> get copyWith => _$TripsCarouselStateCopyWithImpl<TripsCarouselState>(this as TripsCarouselState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripsCarouselState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other.trips, trips));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,const DeepCollectionEquality().hash(trips));

@override
String toString() {
  return 'TripsCarouselState(currentIndex: $currentIndex, trips: $trips)';
}


}

/// @nodoc
abstract mixin class $TripsCarouselStateCopyWith<$Res>  {
  factory $TripsCarouselStateCopyWith(TripsCarouselState value, $Res Function(TripsCarouselState) _then) = _$TripsCarouselStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, List<Trip> trips
});




}
/// @nodoc
class _$TripsCarouselStateCopyWithImpl<$Res>
    implements $TripsCarouselStateCopyWith<$Res> {
  _$TripsCarouselStateCopyWithImpl(this._self, this._then);

  final TripsCarouselState _self;
  final $Res Function(TripsCarouselState) _then;

/// Create a copy of TripsCarouselState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? trips = null,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,trips: null == trips ? _self.trips : trips // ignore: cast_nullable_to_non_nullable
as List<Trip>,
  ));
}

}


/// @nodoc


class _TripCarouselState extends TripsCarouselState {
   _TripCarouselState({this.currentIndex = 0, required final  List<Trip> trips}): _trips = trips,super._();
  

@override@JsonKey() final  int currentIndex;
 final  List<Trip> _trips;
@override List<Trip> get trips {
  if (_trips is EqualUnmodifiableListView) return _trips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trips);
}


/// Create a copy of TripsCarouselState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripCarouselStateCopyWith<_TripCarouselState> get copyWith => __$TripCarouselStateCopyWithImpl<_TripCarouselState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripCarouselState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other._trips, _trips));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,const DeepCollectionEquality().hash(_trips));

@override
String toString() {
  return 'TripsCarouselState(currentIndex: $currentIndex, trips: $trips)';
}


}

/// @nodoc
abstract mixin class _$TripCarouselStateCopyWith<$Res> implements $TripsCarouselStateCopyWith<$Res> {
  factory _$TripCarouselStateCopyWith(_TripCarouselState value, $Res Function(_TripCarouselState) _then) = __$TripCarouselStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, List<Trip> trips
});




}
/// @nodoc
class __$TripCarouselStateCopyWithImpl<$Res>
    implements _$TripCarouselStateCopyWith<$Res> {
  __$TripCarouselStateCopyWithImpl(this._self, this._then);

  final _TripCarouselState _self;
  final $Res Function(_TripCarouselState) _then;

/// Create a copy of TripsCarouselState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? trips = null,}) {
  return _then(_TripCarouselState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,trips: null == trips ? _self._trips : trips // ignore: cast_nullable_to_non_nullable
as List<Trip>,
  ));
}


}

// dart format on
