import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/review/data/model/review_model.dart';
import 'package:project_init/firestore/app_firestore.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc() : super(const _ReviewState()) {
    on<_FetchAllReviews>(_fetchAllReviews);
  }

  FutureOr<void> _fetchAllReviews(
    _FetchAllReviews event,
    Emitter<ReviewState> emit,
  ) async {
    emit(
      state.copyWith(
          theStates: TheStates.loading, selectedFilter: event.selectedFilter,),
    );
    final result =
        await AppFirestore.reviewsDocument(event.productId.toString()).get();
    final data = result.data()!['data'];
    final reviews = (data as List<dynamic>)
        .map(
          (e) => ReviewModel.fromJson(e),
        )
        .toList();
    if (event.selectedFilter != 'All') {
      final valueInString = event.selectedFilter[0];
      final selectedRating = int.parse(valueInString);
      reviews
          .removeWhere((element) => element.rating.toInt() != selectedRating);
    }
    emit(state.copyWith(theStates: TheStates.success, reviews: reviews));
  }
}
