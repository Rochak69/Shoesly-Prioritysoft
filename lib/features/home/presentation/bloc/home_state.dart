part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<ProductModel> products,
    @Default(TheStates.initial) TheStates theStates,
    @Default('All') String selectedbrand,
    @Default(InternalAppError()) AppError error,
  }) = _HomeState;
}
