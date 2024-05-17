// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      image: json['image'] as String,
      logo: json['logo'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      reviews: (json['reviews'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'logo': instance.logo,
      'name': instance.name,
      'price': instance.price,
      'reviews': instance.reviews,
      'rating': instance.rating,
    };
