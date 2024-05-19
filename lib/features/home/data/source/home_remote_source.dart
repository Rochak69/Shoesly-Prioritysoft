import 'package:injectable/injectable.dart';

import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/features/product/data/model/product_model.dart';
import 'package:project_init/firestore/app_firestore.dart';

@injectable
class HomeRemoteSource {
  HomeRemoteSource();

  Future<ApiResponseForList<ProductModel>> getAllProducts({
    required String selectedbrand,
  }) async {
    final result = await AppFirestore.products().get();

    final data = result.data()!['data'];

    final shoes = ApiResponseForList(
      data: (data as List<dynamic>)
          .map(
            (e) => ProductModel.fromJson(e),
          )
          .toList(),
    );
    if (selectedbrand != 'All') {
      shoes.data?.removeWhere((element) => element.brand != selectedbrand);
    }

    return shoes;
  }
}
