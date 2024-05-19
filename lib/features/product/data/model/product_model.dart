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

// List<ProductModel> productsStatic = [
//   const ProductModel(
//     id: 0,
//     image: AppImages.jordanShoe,
//     name: 'Jordan 1 Retro High Tie Dye',
//     price: 23500,
//     logo: AppImages.jordanLogo,
//     brand: 'Jordan',
//     reviews: 1500,
//     rating: 4.8,
//     description:
//         'A unique twist on the classic Jordan 1, featuring a vibrant tie-dye design.',
//     sizes: [40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 1,
//     image: AppImages.nikeShoe,
//     name: 'Nike Air Max 270 React',
//     price: 22000,
//     logo: AppImages.nikeLogo,
//     brand: 'Nike',
//     reviews: 1450,
//     rating: 4.6,
//     description:
//         'The Nike Air Max 270 React combines a classic silhouette with modern comfort and style.',
//     sizes: [39, 40, 41, 42, 43, 44],
//   ),
//   const ProductModel(
//     id: 2,
//     image: AppImages.adidasShoe,
//     name: 'Adidas Yeezy Boost 350 V2',
//     price: 26000,
//     logo: AppImages.adidasLogo,
//     brand: 'Adidas',
//     reviews: 1100,
//     rating: 4.7,
//     description:
//         'Step into the future with the Adidas Yeezy Boost 350 V2, featuring a sleek, futuristic design.',
//     sizes: [38, 39, 40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 3,
//     image: AppImages.nikeShoe,
//     name: 'Nike Air Max 90',
//     price: 20000,
//     logo: AppImages.nikeLogo,
//     brand: 'Nike',
//     reviews: 1250,
//     rating: 4.5,
//     description:
//         'The Nike Air Max 90 offers a timeless look with the latest in comfort technology.',
//     sizes: [40, 41, 42, 43, 44, 45],
//   ),
//   const ProductModel(
//     id: 4,
//     image: AppImages.jordanShoe,
//     name: 'Jordan 4 Retro Fire Red',
//     price: 24000,
//     logo: AppImages.jordanLogo,
//     brand: 'Jordan',
//     reviews: 1300,
//     rating: 4.9,
//     description:
//         'The Jordan 4 Retro Fire Red brings the heat with its bold colorway and classic design.',
//     sizes: [39, 40, 41, 42, 43, 44],
//   ),
//   const ProductModel(
//     id: 5,
//     image: AppImages.adidasShoe,
//     name: 'Adidas Ultra Boost',
//     price: 23000,
//     logo: AppImages.adidasLogo,
//     brand: 'Adidas',
//     reviews: 950,
//     rating: 4.6,
//     description:
//         'Experience ultimate comfort and energy return with the Adidas Ultra Boost.',
//     sizes: [38, 39, 40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 6,
//     image: AppImages.vansShoe,
//     name: 'Vans Sk8-Hi',
//     price: 17000,
//     logo: AppImages.vansLogo,
//     brand: 'Vans',
//     reviews: 1000,
//     rating: 4.4,
//     description:
//         'The Vans Sk8-Hi is a high-top classic that brings a retro vibe to modern skate style.',
//     sizes: [39, 40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 7,
//     image: AppImages.reebokShoe,
//     name: 'Reebok Classic Leather',
//     price: 18000,
//     logo: AppImages.reebokLogo,
//     brand: 'Reebok',
//     reviews: 800,
//     rating: 4.3,
//     description:
//         'The Reebok Classic Leather combines vintage style with modern comfort.',
//     sizes: [40, 41, 42, 43, 44, 45],
//   ),
//   const ProductModel(
//     id: 8,
//     image: AppImages.nikeShoe,
//     name: 'Nike Air Force 1',
//     price: 21000,
//     logo: AppImages.nikeLogo,
//     brand: 'Nike',
//     reviews: 1500,
//     rating: 4.7,
//     description:
//         'The iconic Nike Air Force 1 continues to set the standard for classic sneaker style.',
//     sizes: [39, 40, 41, 42, 43, 44],
//   ),
//   const ProductModel(
//     id: 9,
//     image: AppImages.jordanShoe,
//     name: 'Jordan 1 Mid',
//     price: 23000,
//     logo: AppImages.jordanLogo,
//     brand: 'Jordan',
//     reviews: 1400,
//     rating: 4.6,
//     description:
//         'The Jordan 1 Mid offers a fresh take on the classic with a mid-top design and premium materials.',
//     sizes: [40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 10,
//     image: AppImages.adidasShoe,
//     name: 'Adidas NMD_R1',
//     price: 24500,
//     logo: AppImages.adidasLogo,
//     brand: 'Adidas',
//     reviews: 1000,
//     rating: 4.5,
//     description:
//         'The Adidas NMD_R1 features a sleek design and responsive cushioning for all-day comfort.',
//     sizes: [38, 39, 40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 11,
//     image: AppImages.vansShoe,
//     name: 'Vans Authentic',
//     price: 15500,
//     logo: AppImages.vansLogo,
//     brand: 'Vans',
//     reviews: 900,
//     rating: 4.3,
//     description:
//         'The Vans Authentic is a timeless low-top that delivers classic skate style.',
//     sizes: [39, 40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 12,
//     image: AppImages.reebokShoe,
//     name: 'Reebok Pump Omni Zone II',
//     price: 19500,
//     logo: AppImages.reebokLogo,
//     brand: 'Reebok',
//     reviews: 850,
//     rating: 4.4,
//     description:
//         'The Reebok Pump Omni Zone II brings retro basketball style to the modern court.',
//     sizes: [40, 41, 42, 43, 44, 45],
//   ),
//   const ProductModel(
//     id: 13,
//     image: AppImages.nikeShoe,
//     name: 'Nike Blazer Mid 77',
//     price: 22000,
//     logo: AppImages.nikeLogo,
//     brand: 'Nike',
//     reviews: 1100,
//     rating: 4.6,
//     description:
//         'The Nike Blazer Mid 77 is a vintage-inspired sneaker that combines old-school style with modern comfort.',
//     sizes: [39, 40, 41, 42, 43, 44],
//   ),
//   const ProductModel(
//     id: 14,
//     image: AppImages.jordanShoe,
//     name: 'Jordan 11 Retro Concord',
//     price: 25000,
//     logo: AppImages.jordanLogo,
//     brand: 'Jordan',
//     reviews: 1600,
//     rating: 4.9,
//     description:
//         'The Jordan 11 Retro Concord is a legendary sneaker that offers unmatched style and performance.',
//     sizes: [40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 15,
//     image: AppImages.adidasShoe,
//     name: 'Adidas Superstar',
//     price: 20000,
//     logo: AppImages.adidasLogo,
//     brand: 'Adidas',
//     reviews: 950,
//     rating: 4.5,
//     description:
//         'The Adidas Superstar is an iconic sneaker that has stood the test of time with its classic design and durable construction.',
//     sizes: [38, 39, 40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 16,
//     image: AppImages.vansShoe,
//     name: 'Vans Era',
//     price: 16500,
//     logo: AppImages.vansLogo,
//     brand: 'Vans',
//     reviews: 920,
//     rating: 4.4,
//     description:
//         'The Vans Era is a low-top skate shoe that offers a comfortable fit and timeless style.',
//     sizes: [39, 40, 41, 42, 43],
//   ),
//   const ProductModel(
//     id: 17,
//     image: AppImages.reebokShoe,
//     name: 'Reebok Zig Kinetica',
//     price: 18500,
//     logo: AppImages.reebokLogo,
//     brand: 'Reebok',
//     reviews: 800,
//     rating: 4.4,
//     description:
//         'The Reebok Zig Kinetica features a bold design and innovative cushioning for a dynamic ride.',
//     sizes: [40, 41, 42, 43, 44, 45],
//   ),
//   const ProductModel(
//     id: 18,
//     image: AppImages.nikeShoe,
//     name: 'Nike Dunk Low',
//     price: 22500,
//     logo: AppImages.nikeLogo,
//     brand: 'Nike',
//     reviews: 1300,
//     rating: 4.7,
//     description:
//         'The Nike Dunk Low brings a classic silhouette and vibrant colorways to the forefront of sneaker culture.',
//     sizes: [39, 40, 41, 42, 43, 44],
//   ),
//   const ProductModel(
//     id: 19,
//     image: AppImages.jordanShoe,
//     name: 'Jordan 6 Retro Infrared',
//     price: 24000,
//     logo: AppImages.jordanLogo,
//     brand: 'Jordan',
//     reviews: 1450,
//     rating: 4.8,
//     description:
//         'The Jordan 6 Retro Infrared features a striking colorway and premium materials for a standout look.',
//     sizes: [40, 41, 42, 43],
//   ),
// ];

List<BrandModel> brands = [
  BrandModel(title: 'All', logo: AppImages.reebokLogo),
  BrandModel(title: 'Jordan', logo: AppImages.jordanLogo),
  BrandModel(title: 'Nike', logo: AppImages.nikeLogo),
  BrandModel(title: 'Reebok', logo: AppImages.reebokLogo),
  BrandModel(title: 'Adidas', logo: AppImages.adidasLogo),
  BrandModel(title: 'Vans', logo: AppImages.vansLogo),
];
List<String> reviewFilter = [
  'All',
  '5 Stars',
  '4 Stars',
  '3 Stars',
  '2 Star',
  '1 Star',
];

class BrandModel {
  BrandModel({required this.title, required this.logo});

  final String title;
  final String logo;
}

// List<ReviewModel> reviewStatic = [
//   const ReviewModel(
//     id: 65,
//     review: 'Amazing quality and great customer service!',
//     userName: 'Michael Brown',
//     rating: 5,
//     time: 'Today',
//   ),
//   const ReviewModel(
//     id: 66,
//     review: 'Just okay, nothing impressive.',
//     userName: 'Nina Peterson',
//     rating: 3,
//     time: 'Yesterday',
//   ),
//   const ReviewModel(
//     id: 67,
//     review: 'Very poor quality, do not recommend.',
//     userName: 'Oscar Rivera',
//     rating: 1,
//     time: '2 days ago',
//   ),
//   const ReviewModel(
//     id: 68,
//     review: 'Good product, but had some minor issues.',
//     userName: 'Pauline Carter',
//     rating: 3,
//     time: '3 days ago',
//   ),
//   const ReviewModel(
//     id: 69,
//     review: 'Exceeded my expectations, highly recommend!',
//     userName: 'Quincy Adams',
//     rating: 5,
//     time: 'Last week',
//   ),
//   const ReviewModel(
//     id: 70,
//     review: 'Not worth the money, very disappointing.',
//     userName: 'Rachel Stewart',
//     rating: 2,
//     time: 'Last week',
//   ),
//   const ReviewModel(
//     id: 71,
//     review: 'Great quality and fast shipping!',
//     userName: 'Steve Thompson',
//     rating: 4,
//     time: 'Last month',
//   ),
//   const ReviewModel(
//     id: 72,
//     review: 'Terrible experience, product broke quickly.',
//     userName: 'Tina Evans',
//     rating: 1,
//     time: 'Last month',
//   ),
// ];
