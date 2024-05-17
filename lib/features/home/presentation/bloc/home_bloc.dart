import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/common/model/product_model.dart';
import 'package:project_init/features/home/data/source/home_remote_source.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.remoteSource) : super(const _HomeState()) {
    on<_GetAllProducts>(_getAllProducts, transformer: restartable());
  }
  final HomeRemoteSource remoteSource;

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
    final result =
        await remoteSource.getAllProducts(selectedbrand: event.selectedbrand);
    emit(
      state.copyWith(
        theStates: TheStates.success,
        products: result.data ?? [],
      ),
    );
  }
}
