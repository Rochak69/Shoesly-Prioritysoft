part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(TheStates.initial) TheStates theStates,
    @Default([]) List<CartModel> cartItems,
    @Default(InternalAppError()) AppError error,
  }) = _CartState;
}
