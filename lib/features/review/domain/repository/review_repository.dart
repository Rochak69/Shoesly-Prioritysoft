import 'package:dartz/dartz.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/features/review/data/model/review_model.dart';

abstract class ReviewRepository {
  Future<Either<AppError, ApiResponseForList<ReviewModel>>> getReviews({
    required int productId,
    required String selectedFilter,
  });
}
