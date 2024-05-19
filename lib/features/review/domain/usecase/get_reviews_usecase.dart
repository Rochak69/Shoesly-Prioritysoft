import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/review/data/model/review_model.dart';
import 'package:project_init/features/review/domain/repository/review_repository.dart';

class GetReviewsParam {
  GetReviewsParam({required this.productId, required this.selectedFilter});
  final int productId;
  final String selectedFilter;
}

@lazySingleton
class GetReviewsUsecase
    extends UseCase<ApiResponseForList<ReviewModel>, GetReviewsParam> {
  GetReviewsUsecase(this._repository);
  final ReviewRepository _repository;
  @override
  Future<Either<AppError, ApiResponseForList<ReviewModel>>> call(
    GetReviewsParam param,
  ) =>
      _repository.getReviews(
          productId: param.productId, selectedFilter: param.selectedFilter,);
}
