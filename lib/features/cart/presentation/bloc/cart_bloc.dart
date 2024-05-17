import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/common/model/product_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _CartState()) {
    on<_AddToCart>(_addToCart);
    on<_RemoveFromCart>(_removeFromCart);
  }

  FutureOr<void> _addToCart(_AddToCart event, Emitter<CartState> emit) {
    final products = List<ProductModel>.from(state.products)
      ..add(event.product);
    emit(state.copyWith(products: products));
  }

  FutureOr<void> _removeFromCart(
    _RemoveFromCart event,
    Emitter<CartState> emit,
  ) {
    final products = List<ProductModel>.from(state.products)
      ..removeWhere(
        (element) => element.id == event.id,
      );

    emit(state.copyWith(products: products));
  }
}
