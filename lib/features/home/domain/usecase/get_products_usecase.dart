import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';
import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/home/domain/repository/home_repository.dart';
import 'package:project_init/features/product/data/model/product_model.dart';

class GetProductsParam {
  GetProductsParam({
    required this.selectedbrand,
  });
  final String selectedbrand;
}

@lazySingleton
class GetProductsUsecase
    extends UseCase<ApiResponseForList<ProductModel>, GetProductsParam> {
  GetProductsUsecase(this._repository);
  final HomeRepository _repository;
  @override
  Future<Either<AppError, ApiResponseForList<ProductModel>>> call(
    GetProductsParam param,
  ) =>
      _repository.getProducts(selectedbrand: param.selectedbrand);
}
