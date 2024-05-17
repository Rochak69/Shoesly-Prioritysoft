part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart({required ProductModel product}) =
      _AddToCart;
  const factory CartEvent.removeFromCart({required int id}) = _RemoveFromCart;
}
