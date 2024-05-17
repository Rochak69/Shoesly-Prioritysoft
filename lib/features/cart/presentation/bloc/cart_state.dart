part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(TheStates.initial) TheStates theStates,
    @Default([]) List<ProductModel> products,
    @Default(InternalAppError()) AppError error,
  }) = _CartState;
}
