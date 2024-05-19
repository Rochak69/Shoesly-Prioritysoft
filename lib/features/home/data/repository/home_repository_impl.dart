import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/features/home/data/source/home_remote_source.dart';
import 'package:project_init/features/home/domain/repository/home_repository.dart';
import 'package:project_init/features/product/data/model/product_model.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this.source);
  final HomeRemoteSource source;

  @override
  Future<Either<AppError, ApiResponseForList<ProductModel>>> getProducts({
    required String selectedbrand,
  }) async {
    try {
      final result = await source.getAllProducts(selectedbrand: selectedbrand);
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
