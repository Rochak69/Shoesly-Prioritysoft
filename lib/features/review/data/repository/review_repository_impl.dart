import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/features/review/data/model/review_model.dart';
import 'package:project_init/features/review/data/source/review_remote_source.dart';
import 'package:project_init/features/review/domain/repository/review_repository.dart';

@LazySingleton(as: ReviewRepository)
class ReviewRepositoryImpl extends ReviewRepository {
  ReviewRepositoryImpl(this.source);
  final ReviewRemoteSource source;

  @override
  Future<Either<AppError, ApiResponseForList<ReviewModel>>> getReviews(
      {required int productId, required String selectedFilter,}) async {
    try {
      final result = await source.getAllReviews(
          productId: productId, selectedFilter: selectedFilter,);
      return right(result);
    } catch (e) {
      if (e is ApiErrorResponse) {
        return left(e);
      } else {
        return left(const InternalAppError());
      }
    }
  }
}
