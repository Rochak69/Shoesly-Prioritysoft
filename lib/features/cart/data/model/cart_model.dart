import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_init/features/product/data/model/product_model.dart';
part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({@Default(0) int count, ProductModel? product}) =
      _CartModel;
  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
