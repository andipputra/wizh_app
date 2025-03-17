// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripModel {

 int get id; String get title; double get price; double get rating; TripType get tripType; String? get summary; List<String> get photos; List<String>? get includes; List<String>? get excludes; String? get termsAndConditions; int? get totalPax; List<Review> get reviews;
/// Create a copy of TripModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripModelCopyWith<TripModel> get copyWith => _$TripModelCopyWithImpl<TripModel>(this as TripModel, _$identity);

  /// Serializes this TripModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.tripType, tripType) || other.tripType == tripType)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.photos, photos)&&const DeepCollectionEquality().equals(other.includes, includes)&&const DeepCollectionEquality().equals(other.excludes, excludes)&&(identical(other.termsAndConditions, termsAndConditions) || other.termsAndConditions == termsAndConditions)&&(identical(other.totalPax, totalPax) || other.totalPax == totalPax)&&const DeepCollectionEquality().equals(other.reviews, reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,rating,tripType,summary,const DeepCollectionEquality().hash(photos),const DeepCollectionEquality().hash(includes),const DeepCollectionEquality().hash(excludes),termsAndConditions,totalPax,const DeepCollectionEquality().hash(reviews));

@override
String toString() {
  return 'TripModel(id: $id, title: $title, price: $price, rating: $rating, tripType: $tripType, summary: $summary, photos: $photos, includes: $includes, excludes: $excludes, termsAndConditions: $termsAndConditions, totalPax: $totalPax, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class $TripModelCopyWith<$Res>  {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) _then) = _$TripModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, double price, double rating, TripType tripType, String? summary, List<String> photos, List<String>? includes, List<String>? excludes, String? termsAndConditions, int? totalPax, List<Review> reviews
});




}
/// @nodoc
class _$TripModelCopyWithImpl<$Res>
    implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._self, this._then);

  final TripModel _self;
  final $Res Function(TripModel) _then;

/// Create a copy of TripModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,Object? rating = null,Object? tripType = null,Object? summary = freezed,Object? photos = null,Object? includes = freezed,Object? excludes = freezed,Object? termsAndConditions = freezed,Object? totalPax = freezed,Object? reviews = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,tripType: null == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as TripType,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,includes: freezed == includes ? _self.includes : includes // ignore: cast_nullable_to_non_nullable
as List<String>?,excludes: freezed == excludes ? _self.excludes : excludes // ignore: cast_nullable_to_non_nullable
as List<String>?,termsAndConditions: freezed == termsAndConditions ? _self.termsAndConditions : termsAndConditions // ignore: cast_nullable_to_non_nullable
as String?,totalPax: freezed == totalPax ? _self.totalPax : totalPax // ignore: cast_nullable_to_non_nullable
as int?,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TripModel extends TripModel {
  const _TripModel({required this.id, required this.title, required this.price, required this.rating, required this.tripType, this.summary, final  List<String> photos = const <String>[], final  List<String>? includes, final  List<String>? excludes, this.termsAndConditions, this.totalPax, final  List<Review> reviews = const <Review>[]}): _photos = photos,_includes = includes,_excludes = excludes,_reviews = reviews,super._();
  factory _TripModel.fromJson(Map<String, dynamic> json) => _$TripModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  double price;
@override final  double rating;
@override final  TripType tripType;
@override final  String? summary;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

 final  List<String>? _includes;
@override List<String>? get includes {
  final value = _includes;
  if (value == null) return null;
  if (_includes is EqualUnmodifiableListView) return _includes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _excludes;
@override List<String>? get excludes {
  final value = _excludes;
  if (value == null) return null;
  if (_excludes is EqualUnmodifiableListView) return _excludes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? termsAndConditions;
@override final  int? totalPax;
 final  List<Review> _reviews;
@override@JsonKey() List<Review> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}


/// Create a copy of TripModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripModelCopyWith<_TripModel> get copyWith => __$TripModelCopyWithImpl<_TripModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.tripType, tripType) || other.tripType == tripType)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._photos, _photos)&&const DeepCollectionEquality().equals(other._includes, _includes)&&const DeepCollectionEquality().equals(other._excludes, _excludes)&&(identical(other.termsAndConditions, termsAndConditions) || other.termsAndConditions == termsAndConditions)&&(identical(other.totalPax, totalPax) || other.totalPax == totalPax)&&const DeepCollectionEquality().equals(other._reviews, _reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,rating,tripType,summary,const DeepCollectionEquality().hash(_photos),const DeepCollectionEquality().hash(_includes),const DeepCollectionEquality().hash(_excludes),termsAndConditions,totalPax,const DeepCollectionEquality().hash(_reviews));

@override
String toString() {
  return 'TripModel(id: $id, title: $title, price: $price, rating: $rating, tripType: $tripType, summary: $summary, photos: $photos, includes: $includes, excludes: $excludes, termsAndConditions: $termsAndConditions, totalPax: $totalPax, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$TripModelCopyWith<$Res> implements $TripModelCopyWith<$Res> {
  factory _$TripModelCopyWith(_TripModel value, $Res Function(_TripModel) _then) = __$TripModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, double price, double rating, TripType tripType, String? summary, List<String> photos, List<String>? includes, List<String>? excludes, String? termsAndConditions, int? totalPax, List<Review> reviews
});




}
/// @nodoc
class __$TripModelCopyWithImpl<$Res>
    implements _$TripModelCopyWith<$Res> {
  __$TripModelCopyWithImpl(this._self, this._then);

  final _TripModel _self;
  final $Res Function(_TripModel) _then;

/// Create a copy of TripModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,Object? rating = null,Object? tripType = null,Object? summary = freezed,Object? photos = null,Object? includes = freezed,Object? excludes = freezed,Object? termsAndConditions = freezed,Object? totalPax = freezed,Object? reviews = null,}) {
  return _then(_TripModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,tripType: null == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as TripType,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,includes: freezed == includes ? _self._includes : includes // ignore: cast_nullable_to_non_nullable
as List<String>?,excludes: freezed == excludes ? _self._excludes : excludes // ignore: cast_nullable_to_non_nullable
as List<String>?,termsAndConditions: freezed == termsAndConditions ? _self.termsAndConditions : termsAndConditions // ignore: cast_nullable_to_non_nullable
as String?,totalPax: freezed == totalPax ? _self.totalPax : totalPax // ignore: cast_nullable_to_non_nullable
as int?,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}


}


/// @nodoc
mixin _$Review {

 String get reviewerName; double get rating; String get comment; DateTime get date;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewerName,rating,comment,date);

@override
String toString() {
  return 'Review(reviewerName: $reviewerName, rating: $rating, comment: $comment, date: $date)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String reviewerName, double rating, String comment, DateTime date
});




}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewerName = null,Object? rating = null,Object? comment = null,Object? date = null,}) {
  return _then(_self.copyWith(
reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Review extends Review {
  const _Review({required this.reviewerName, required this.rating, required this.comment, required this.date}): super._();
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override final  String reviewerName;
@override final  double rating;
@override final  String comment;
@override final  DateTime date;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewerName,rating,comment,date);

@override
String toString() {
  return 'Review(reviewerName: $reviewerName, rating: $rating, comment: $comment, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String reviewerName, double rating, String comment, DateTime date
});




}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewerName = null,Object? rating = null,Object? comment = null,Object? date = null,}) {
  return _then(_Review(
reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
