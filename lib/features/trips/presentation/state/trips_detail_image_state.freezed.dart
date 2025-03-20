// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trips_detail_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TripsDetailImageState {

 int get currentIndex; List<String> get photos; dynamic get showRightArrow; dynamic get showLeftArrow;
/// Create a copy of TripsDetailImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripsDetailImageStateCopyWith<TripsDetailImageState> get copyWith => _$TripsDetailImageStateCopyWithImpl<TripsDetailImageState>(this as TripsDetailImageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripsDetailImageState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other.photos, photos)&&const DeepCollectionEquality().equals(other.showRightArrow, showRightArrow)&&const DeepCollectionEquality().equals(other.showLeftArrow, showLeftArrow));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,const DeepCollectionEquality().hash(photos),const DeepCollectionEquality().hash(showRightArrow),const DeepCollectionEquality().hash(showLeftArrow));

@override
String toString() {
  return 'TripsDetailImageState(currentIndex: $currentIndex, photos: $photos, showRightArrow: $showRightArrow, showLeftArrow: $showLeftArrow)';
}


}

/// @nodoc
abstract mixin class $TripsDetailImageStateCopyWith<$Res>  {
  factory $TripsDetailImageStateCopyWith(TripsDetailImageState value, $Res Function(TripsDetailImageState) _then) = _$TripsDetailImageStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, List<String> photos, dynamic showRightArrow, dynamic showLeftArrow
});




}
/// @nodoc
class _$TripsDetailImageStateCopyWithImpl<$Res>
    implements $TripsDetailImageStateCopyWith<$Res> {
  _$TripsDetailImageStateCopyWithImpl(this._self, this._then);

  final TripsDetailImageState _self;
  final $Res Function(TripsDetailImageState) _then;

/// Create a copy of TripsDetailImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? photos = null,Object? showRightArrow = freezed,Object? showLeftArrow = freezed,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,showRightArrow: freezed == showRightArrow ? _self.showRightArrow : showRightArrow // ignore: cast_nullable_to_non_nullable
as dynamic,showLeftArrow: freezed == showLeftArrow ? _self.showLeftArrow : showLeftArrow // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc


class _TripCarouselState extends TripsDetailImageState {
   _TripCarouselState({this.currentIndex = 0, required final  List<String> photos, this.showRightArrow = true, this.showLeftArrow = false}): _photos = photos,super._();
  

@override@JsonKey() final  int currentIndex;
 final  List<String> _photos;
@override List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey() final  dynamic showRightArrow;
@override@JsonKey() final  dynamic showLeftArrow;

/// Create a copy of TripsDetailImageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripCarouselStateCopyWith<_TripCarouselState> get copyWith => __$TripCarouselStateCopyWithImpl<_TripCarouselState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripCarouselState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other._photos, _photos)&&const DeepCollectionEquality().equals(other.showRightArrow, showRightArrow)&&const DeepCollectionEquality().equals(other.showLeftArrow, showLeftArrow));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,const DeepCollectionEquality().hash(_photos),const DeepCollectionEquality().hash(showRightArrow),const DeepCollectionEquality().hash(showLeftArrow));

@override
String toString() {
  return 'TripsDetailImageState(currentIndex: $currentIndex, photos: $photos, showRightArrow: $showRightArrow, showLeftArrow: $showLeftArrow)';
}


}

/// @nodoc
abstract mixin class _$TripCarouselStateCopyWith<$Res> implements $TripsDetailImageStateCopyWith<$Res> {
  factory _$TripCarouselStateCopyWith(_TripCarouselState value, $Res Function(_TripCarouselState) _then) = __$TripCarouselStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, List<String> photos, dynamic showRightArrow, dynamic showLeftArrow
});




}
/// @nodoc
class __$TripCarouselStateCopyWithImpl<$Res>
    implements _$TripCarouselStateCopyWith<$Res> {
  __$TripCarouselStateCopyWithImpl(this._self, this._then);

  final _TripCarouselState _self;
  final $Res Function(_TripCarouselState) _then;

/// Create a copy of TripsDetailImageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? photos = null,Object? showRightArrow = freezed,Object? showLeftArrow = freezed,}) {
  return _then(_TripCarouselState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,showRightArrow: freezed == showRightArrow ? _self.showRightArrow! : showRightArrow ,showLeftArrow: freezed == showLeftArrow ? _self.showLeftArrow! : showLeftArrow ,
  ));
}


}

// dart format on
