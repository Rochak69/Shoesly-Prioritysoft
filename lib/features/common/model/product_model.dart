// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_init/constants/app_images.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String image,
    required String logo,
    required String name,
    required double price,
    required int reviews,
    required double rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

List<ProductModel> products = [
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 2 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'SB low dunk',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Very very long name shoe',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
  const ProductModel(
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    reviews: 1045,
    rating: 4.6,
  ),
];
