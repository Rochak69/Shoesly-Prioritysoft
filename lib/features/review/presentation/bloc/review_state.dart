part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default(TheStates.initial) TheStates theStates,
    @Default([]) List<ReviewModel> reviews,
    double? averageReviews,
    @Default('All') String selectedFilter,
    @Default(InternalAppError()) AppError error,
  }) = _ReviewState;
}
