import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/review/data/model/review_model.dart';
import 'package:project_init/features/review/domain/usecase/get_reviews_usecase.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc(this._getReviewsUsecase) : super(const _ReviewState()) {
    on<_FetchAllReviews>(_fetchAllReviews);
  }
  final GetReviewsUsecase _getReviewsUsecase;

  FutureOr<void> _fetchAllReviews(
    _FetchAllReviews event,
    Emitter<ReviewState> emit,
  ) async {
    emit(
      state.copyWith(
        theStates: TheStates.loading,
        selectedFilter: event.selectedFilter,
      ),
    );
    final result = await _getReviewsUsecase.call(
      GetReviewsParam(
        productId: event.productId,
        selectedFilter: event.selectedFilter,
      ),
    );
    result.fold(
      (l) {
        emit(state.copyWith(theStates: TheStates.error));
      },
      (r) {
        var averageReview = state.averageReviews ?? 0.0;
        if (event.calculateReview) {
          for (var i = 0; i < (r.data?.length ?? 0); i++) {
            averageReview += r.data![i].rating;
          }
          averageReview = averageReview / (r.data?.length ?? 1);
        }

        emit(
          state.copyWith(
            theStates: TheStates.success,
            reviews: r.data ?? [],
            averageReviews: averageReview,
          ),
        );
      },
    );
  }
}
