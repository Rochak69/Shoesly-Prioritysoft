part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.fetchAllReview({
    required int productId,
    @Default('All') String selectedFilter,
    @Default(false) bool calculateReview,
  }) = _FetchAllReviews;
}
