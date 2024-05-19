import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/home/domain/usecase/get_products_usecase.dart';
import 'package:project_init/features/product/data/model/product_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._getProductsUsecase) : super(const _HomeState()) {
    on<_GetAllProducts>(_getAllProducts, transformer: restartable());
  }
  final GetProductsUsecase _getProductsUsecase;

  FutureOr<void> _getAllProducts(
    _GetAllProducts event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        theStates: TheStates.initial,
        selectedbrand: event.selectedbrand,
      ),
    );
    final result = await _getProductsUsecase
        .call(GetProductsParam(selectedbrand: event.selectedbrand));
    result.fold(
      (l) {
        emit(
          state.copyWith(
            theStates: TheStates.error,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            theStates: TheStates.success,
            products: r.data ?? [],
          ),
        );
      },
    );
  }
}
