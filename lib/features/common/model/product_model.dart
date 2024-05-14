// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:project_init/constants/app_images.dart';

class ProductModel {
  String image;
  String logo;
  String name;
  double price;
  int reviews;
  double rating;
  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.reviews,
    required this.rating,
    required this.logo,
  });

  ProductModel copyWith({
    String? image,
    String? logo,
    String? name,
    double? price,
    int? reviews,
    double? rating,
  }) {
    return ProductModel(
      image: image ?? this.image,
      name: name ?? this.name,
      price: price ?? this.price,
      reviews: reviews ?? this.reviews,
      rating: rating ?? this.rating,
      logo: logo ?? this.logo,
    );
  }
}

List<ProductModel> products = [
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 2 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'SB low dunk',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Very very long name shoe',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
];
