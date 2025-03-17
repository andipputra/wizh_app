// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TripModel _$TripModelFromJson(Map<String, dynamic> json) => _TripModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  price: (json['price'] as num).toDouble(),
  rating: (json['rating'] as num).toDouble(),
  tripType: $enumDecode(_$TripTypeEnumMap, json['tripType']),
  summary: json['summary'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  includes:
      (json['includes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  excludes:
      (json['excludes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  termsAndConditions: json['termsAndConditions'] as String?,
  totalPax: (json['totalPax'] as num?)?.toInt(),
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Review>[],
);

Map<String, dynamic> _$TripModelToJson(_TripModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'rating': instance.rating,
      'tripType': _$TripTypeEnumMap[instance.tripType]!,
      'summary': instance.summary,
      'photos': instance.photos,
      'includes': instance.includes,
      'excludes': instance.excludes,
      'termsAndConditions': instance.termsAndConditions,
      'totalPax': instance.totalPax,
      'reviews': instance.reviews,
    };

const _$TripTypeEnumMap = {TripType.open: 'open', TripType.private: 'private'};

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  reviewerName: json['reviewerName'] as String,
  rating: (json['rating'] as num).toDouble(),
  comment: json['comment'] as String,
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'reviewerName': instance.reviewerName,
  'rating': instance.rating,
  'comment': instance.comment,
  'date': instance.date.toIso8601String(),
};
