import 'package:dartz/dartz.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/features/product/data/model/product_model.dart';

abstract class HomeRepository {
  Future<Either<AppError, ApiResponseForList<ProductModel>>> getProducts({
    required String selectedbrand,
  });
}
