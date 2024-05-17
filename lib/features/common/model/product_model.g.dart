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
      brand: json['brand'] as String,
      description: json['description'] as String,
      sizes: (json['sizes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      price: (json['price'] as num).toDouble(),
      reviews: (json['reviews'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'logo': instance.logo,
      'name': instance.name,
      'brand': instance.brand,
      'description': instance.description,
      'sizes': instance.sizes,
      'price': instance.price,
      'reviews': instance.reviews,
      'rating': instance.rating,
      'id': instance.id,
    };
