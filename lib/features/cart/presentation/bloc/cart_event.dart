part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart({
    required ProductModel product,
    int? count,
  }) = _AddToCart;
  const factory CartEvent.returnInitial() = _ReturnInitial;
  const factory CartEvent.removeFromCart({
    required int id,
    @Default(false) bool deleteAll,
  }) = _RemoveFromCart;
}
