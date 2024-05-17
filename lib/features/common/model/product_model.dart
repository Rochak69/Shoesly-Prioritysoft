// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/features/review/data/model/review_model.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String image,
    required String logo,
    required String name,
    required String brand,
    required String description,
    required List<int> sizes,
    required double price,
    required int reviews,
    required double rating,
    required int id,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

List<ProductModel> productsStatic = [
  const ProductModel(
    id: 0,
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    brand: 'Jordan',
    reviews: 1500,
    rating: 4.8,
    description:
        'A unique twist on the classic Jordan 1, featuring a vibrant tie-dye design.',
    sizes: [40, 41, 42, 43],
  ),
  const ProductModel(
    id: 1,
    image: AppImages.shoePng,
    name: 'Nike Air Max 270',
    price: 22000,
    logo: AppImages.brandPng,
    brand: 'Nike',
    reviews: 1320,
    rating: 4.5,
    description:
        'Experience the comfort and style of the Nike Air Max 270, perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43, 44],
  ),
  const ProductModel(
    id: 2,
    image: AppImages.shoePng,
    name: 'Adidas Yeezy Boost 350',
    price: 25000,
    logo: AppImages.brandPng,
    brand: 'Adidas',
    reviews: 980,
    rating: 4.7,
    description:
        'The Yeezy Boost 350 offers unparalleled comfort and a sleek, modern design.',
    sizes: [38, 39, 40, 41, 42, 43],
  ),
  const ProductModel(
    id: 3,
    image: AppImages.shoePng,
    name: 'Nike Air Max 270',
    price: 22000,
    logo: AppImages.brandPng,
    brand: 'Nike',
    reviews: 1320,
    rating: 4.5,
    description:
        'Experience the comfort and style of the Nike Air Max 270, perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43, 44],
  ),
  const ProductModel(
    id: 4,
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    brand: 'Jordan',
    reviews: 1500,
    rating: 4.8,
    description:
        'A unique twist on the classic Jordan 1, featuring a vibrant tie-dye design.',
    sizes: [40, 41, 42, 43],
  ),
  const ProductModel(
    id: 5,
    image: AppImages.shoePng,
    name: 'Adidas Yeezy Boost 350',
    price: 25000,
    logo: AppImages.brandPng,
    brand: 'Adidas',
    reviews: 980,
    rating: 4.7,
    description:
        'The Yeezy Boost 350 offers unparalleled comfort and a sleek, modern design.',
    sizes: [38, 39, 40, 41, 42, 43],
  ),
  const ProductModel(
    id: 6,
    image: AppImages.shoePng,
    name: 'Vans Old Skool',
    price: 16000,
    logo: AppImages.brandPng,
    brand: 'Vans',
    reviews: 970,
    rating: 4.5,
    description:
        'The Vans Old Skool is a skateboarding classic that’s perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43],
  ),
  const ProductModel(
    id: 7,
    image: AppImages.shoePng,
    name: 'Reebok Club C 85',
    price: 17500,
    logo: AppImages.brandPng,
    brand: 'Reebok',
    reviews: 830,
    rating: 4.4,
    description: 'Vintage style meets modern comfort in the Reebok Club C 85.',
    sizes: [40, 41, 42, 43, 44, 45],
  ),
  const ProductModel(
    id: 8,
    image: AppImages.shoePng,
    name: 'Nike Air Max 270',
    price: 22000,
    logo: AppImages.brandPng,
    brand: 'Nike',
    reviews: 1320,
    rating: 4.5,
    description:
        'Experience the comfort and style of the Nike Air Max 270, perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43, 44],
  ),
  const ProductModel(
    id: 9,
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    brand: 'Jordan',
    reviews: 1500,
    rating: 4.8,
    description:
        'A unique twist on the classic Jordan 1, featuring a vibrant tie-dye design.',
    sizes: [40, 41, 42, 43],
  ),
  const ProductModel(
    id: 10,
    image: AppImages.shoePng,
    name: 'Adidas Yeezy Boost 350',
    price: 25000,
    logo: AppImages.brandPng,
    brand: 'Adidas',
    reviews: 980,
    rating: 4.7,
    description:
        'The Yeezy Boost 350 offers unparalleled comfort and a sleek, modern design.',
    sizes: [38, 39, 40, 41, 42, 43],
  ),
  const ProductModel(
    id: 11,
    image: AppImages.shoePng,
    name: 'Vans Old Skool',
    price: 16000,
    logo: AppImages.brandPng,
    brand: 'Vans',
    reviews: 970,
    rating: 4.5,
    description:
        'The Vans Old Skool is a skateboarding classic that’s perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43],
  ),
  const ProductModel(
    id: 12,
    image: AppImages.shoePng,
    name: 'Reebok Club C 85',
    price: 17500,
    logo: AppImages.brandPng,
    brand: 'Reebok',
    reviews: 830,
    rating: 4.4,
    description: 'Vintage style meets modern comfort in the Reebok Club C 85.',
    sizes: [40, 41, 42, 43, 44, 45],
  ),
  const ProductModel(
    id: 13,
    image: AppImages.shoePng,
    name: 'Nike Air Max 270',
    price: 22000,
    logo: AppImages.brandPng,
    brand: 'Nike',
    reviews: 1320,
    rating: 4.5,
    description:
        'Experience the comfort and style of the Nike Air Max 270, perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43, 44],
  ),
  const ProductModel(
    id: 14,
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    brand: 'Jordan',
    reviews: 1500,
    rating: 4.8,
    description:
        'A unique twist on the classic Jordan 1, featuring a vibrant tie-dye design.',
    sizes: [40, 41, 42, 43],
  ),
  const ProductModel(
    id: 15,
    image: AppImages.shoePng,
    name: 'Adidas Yeezy Boost 350',
    price: 25000,
    logo: AppImages.brandPng,
    brand: 'Adidas',
    reviews: 980,
    rating: 4.7,
    description:
        'The Yeezy Boost 350 offers unparalleled comfort and a sleek, modern design.',
    sizes: [38, 39, 40, 41, 42, 43],
  ),
  const ProductModel(
    id: 16,
    image: AppImages.shoePng,
    name: 'Vans Old Skool',
    price: 16000,
    logo: AppImages.brandPng,
    brand: 'Vans',
    reviews: 970,
    rating: 4.5,
    description:
        'The Vans Old Skool is a skateboarding classic that’s perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43],
  ),
  const ProductModel(
    id: 17,
    image: AppImages.shoePng,
    name: 'Reebok Club C 85',
    price: 17500,
    logo: AppImages.brandPng,
    brand: 'Reebok',
    reviews: 830,
    rating: 4.4,
    description: 'Vintage style meets modern comfort in the Reebok Club C 85.',
    sizes: [40, 41, 42, 43, 44, 45],
  ),
  const ProductModel(
    id: 18,
    image: AppImages.shoePng,
    name: 'Nike Air Max 270',
    price: 22000,
    logo: AppImages.brandPng,
    brand: 'Nike',
    reviews: 1320,
    rating: 4.5,
    description:
        'Experience the comfort and style of the Nike Air Max 270, perfect for everyday wear.',
    sizes: [39, 40, 41, 42, 43, 44],
  ),
  const ProductModel(
    id: 19,
    image: AppImages.shoePng,
    name: 'Jordan 1 Retro High Tie Dye',
    price: 23500,
    logo: AppImages.brandPng,
    brand: 'Jordan',
    reviews: 1500,
    rating: 4.8,
    description:
        'A unique twist on the classic Jordan 1, featuring a vibrant tie-dye design.',
    sizes: [40, 41, 42, 43],
  ),
];

List<String> brands = ['All', 'Jordan', 'Nike', 'Reebok', 'Adidas', 'Vans'];
List<String> reviewFilter = [
  'All',
  '5 Stars',
  '4 Stars',
  '3 Stars',
  '2 Star',
  '1 Star',
];

List<ReviewModel> reviewStatic = [
  const ReviewModel(
    id: 1,
    review: 'This product is fantastic! Exceeded my expectations.',
    userName: 'Alice Johnson',
    rating: 5,
    time: 'Today',
  ),
  const ReviewModel(
    id: 2,
    review: 'Good value for the price, but there are better options available.',
    userName: 'Bob Smith',
    rating: 3,
    time: 'Yesterday',
  ),
  const ReviewModel(
    id: 3,
    review: 'Not satisfied with the quality. Would not recommend.',
    userName: 'Cathy Brown',
    rating: 1,
    time: '2 days ago',
  ),
  const ReviewModel(
    id: 4,
    review: 'Decent product, but shipping took too long.',
    userName: 'David Wilson',
    rating: 3,
    time: '3 days ago',
  ),
  const ReviewModel(
    id: 5,
    review: 'Amazing! Will definitely buy again.',
    userName: 'Emma Davis',
    rating: 5,
    time: 'Last week',
  ),
  const ReviewModel(
    id: 6,
    review: 'It’s okay, but I expected more features.',
    userName: 'Frank Moore',
    rating: 2,
    time: 'Last week',
  ),
  const ReviewModel(
    id: 7,
    review: 'Excellent quality and fast shipping. Highly recommend.',
    userName: 'Grace Lee',
    rating: 4,
    time: 'Last month',
  ),
  const ReviewModel(
    id: 8,
    review: 'Terrible product. It broke after one use.',
    userName: 'Henry Clark',
    rating: 1,
    time: 'Last month',
  ),
];
