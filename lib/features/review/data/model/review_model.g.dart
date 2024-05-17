// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      id: (json['id'] as num).toInt(),
      review: json['review'] as String,
      userName: json['userName'] as String,
      rating: (json['rating'] as num).toDouble(),
      time: json['time'] as String,
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'review': instance.review,
      'userName': instance.userName,
      'rating': instance.rating,
      'time': instance.time,
    };
