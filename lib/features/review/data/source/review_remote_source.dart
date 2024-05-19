import 'package:injectable/injectable.dart';

import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/features/review/data/model/review_model.dart';
import 'package:project_init/firestore/app_firestore.dart';

@injectable
class ReviewRemoteSource {
  ReviewRemoteSource();

  Future<ApiResponseForList<ReviewModel>> getAllReviews({
    required int productId,
    required String selectedFilter,
  }) async {
    final result =
        await AppFirestore.reviewsDocument(productId.toString()).get();
    final data = result.data()!['data'];
    final reviews = (data as List<dynamic>)
        .map(
          (e) => ReviewModel.fromJson(e),
        )
        .toList();
    if (selectedFilter != 'All') {
      final valueInString = selectedFilter[0];
      final selectedRating = int.parse(valueInString);
      reviews
          .removeWhere((element) => element.rating.toInt() != selectedRating);
    }
    return ApiResponseForList(data: reviews);
  }
}
