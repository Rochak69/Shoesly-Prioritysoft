import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/cart/data/model/cart_model.dart';
import 'package:project_init/features/product/data/model/product_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _CartState()) {
    on<_AddToCart>(_addToCart);
    on<_RemoveFromCart>(_removeFromCart);
    on<_ReturnInitial>(_returnInitial);
  }

  FutureOr<void> _addToCart(_AddToCart event, Emitter<CartState> emit) {
    var cartItems = List<CartModel>.from(state.cartItems);
    var isExistingItem = false;

    cartItems = cartItems.map(
      (e) {
        if (e.product?.id == event.product.id) {
          isExistingItem = true;
          return e.copyWith(count: e.count + (event.count ?? 1));
        }
        return e;
      },
    ).toList();
    if (!isExistingItem) {
      cartItems.add(CartModel(product: event.product, count: event.count ?? 1));
    }
    emit(state.copyWith(cartItems: cartItems));
  }

  FutureOr<void> _removeFromCart(
    _RemoveFromCart event,
    Emitter<CartState> emit,
  ) {
    var cartItems = List<CartModel>.from(state.cartItems);
    var isExistingItem = false;
    if (event.deleteAll) {
      cartItems.removeWhere(
        (element) => element.product!.id == event.id,
      );
    } else {
      cartItems = cartItems.map(
        (e) {
          if (e.product?.id == event.id) {
            isExistingItem = true;
            return e.copyWith(count: e.count - 1);
          }
          return e;
        },
      ).toList();
      if (!isExistingItem) {
        cartItems.removeWhere(
          (element) => element.product?.id == event.id,
        );
      }
    }

    emit(state.copyWith(cartItems: cartItems));
  }

  FutureOr<void> _returnInitial(_ReturnInitial event, Emitter<CartState> emit) {
    emit(const CartState());
  }
}
