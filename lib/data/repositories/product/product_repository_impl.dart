import 'package:dio/dio.dart';
import 'package:flutter_frame/data/repositories/product/product_repository.dart';
import 'package:flutter_frame/data/services/api/api_service/product_api_service.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductApiService productApiService;

  // Add a proper typed parameter so the analyzer knows the type.
  ProductRepositoryImpl({required this.productApiService});

  @override
  Future<ProductModel?> getById(String id) async {
    try {
      // Perform the request. Keep the generic type if your Dio is configured
      // to return a `ProductApiModel` directly via a transformer. If not,
      // the response.data will be a Map and codegen `fromJson` should be used.
      final result = await (productApiService.getId(id));

      final api = result.data!;

      return ProductModel(
        id: api.id,
        title: api.title,
        description: api.description,
        category: api.category,
        price: api.price,
        discountPercentage: api.discountPercentage,
        rating: api.rating,
        stock: api.stock,
        tags: api.tags,
        brand: api.brand,
        sku: api.sku,
        weight: api.weight,
        dimensions: ProductDimensions(
          width: api.dimensions.width,
          height: api.dimensions.height,
          depth: api.dimensions.depth,
        ),
        warrantyInformation: api.warrantyInformation,
        shippingInformation: api.shippingInformation,
        availabilityStatus: api.availabilityStatus,
        reviews: api.reviews
            .map(
              (r) => ProductReview(
                rating: r.rating,
                comment: r.comment,
                date: r.date,
                reviewerName: r.reviewerName,
                reviewerEmail: r.reviewerEmail,
              ),
            )
            .toList(),
        returnPolicy: api.returnPolicy,
        minimumOrderQuantity: api.minimumOrderQuantity,
        meta: ProductMeta(
          createdAt: api.meta.createdAt,
          updatedAt: api.meta.updatedAt,
          barcode: api.meta.barcode,
          qrCode: api.meta.qrCode,
        ),
        images: (api.images),
        thumbnail: api.thumbnail,
      );
    } on DioException catch (e) {
      // If the product is not found return null to the caller.
      if (e.response?.statusCode == 404) return null;

      // Log the error for debugging. In production you may want to use a
      // centralized logger and propagate the error instead of swallowing it.
      // Keep the method signature unchanged (returns null on error).
      print(
        'ProductRepositoryImpl.getById - DioError: ${e.message}, '
        'statusCode=${e.response?.statusCode}, data=${e.response?.data}',
      );
      return null;
    } catch (e, st) {
      // Any other unexpected error - log and return null.
      print('ProductRepositoryImpl.getById - Unexpected error: $e\n$st');
      return null;
    }
  }

  @override
  Future<List<ProductModel>> getAll() async {
    try {
      // Perform the request. Keep the generic type if your Dio is configured
      // to return a `ProductApiModel` directly via a transformer. If not,
      // the response.data will be a Map and codegen `fromJson` should be used.
      final result = await (productApiService.getList());

      final api = (result.data);

      return api
              ?.map(
                (api) => ProductModel(
                  id: api.id,
                  title: api.title,
                  description: api.description,
                  category: api.category,
                  price: api.price,
                  discountPercentage: api.discountPercentage,
                  rating: api.rating,
                  stock: api.stock,
                  tags: api.tags,
                  brand: api.brand,
                  sku: api.sku,
                  weight: api.weight,
                  dimensions: ProductDimensions(
                    width: api.dimensions.width,
                    height: api.dimensions.height,
                    depth: api.dimensions.depth,
                  ),
                  warrantyInformation: api.warrantyInformation,
                  shippingInformation: api.shippingInformation,
                  availabilityStatus: api.availabilityStatus,
                  reviews: api.reviews
                      .map(
                        (r) => ProductReview(
                          rating: r.rating,
                          comment: r.comment,
                          date: r.date,
                          reviewerName: r.reviewerName,
                          reviewerEmail: r.reviewerEmail,
                        ),
                      )
                      .toList(),
                  returnPolicy: api.returnPolicy,
                  minimumOrderQuantity: api.minimumOrderQuantity,
                  meta: ProductMeta(
                    createdAt: api.meta.createdAt,
                    updatedAt: api.meta.updatedAt,
                    barcode: api.meta.barcode,
                    qrCode: api.meta.qrCode,
                  ),
                  images: (api.images),
                  thumbnail: api.thumbnail,
                ),
              )
              .toList() ??
          [];
    } on DioException catch (e) {
      // If the product is not found return null to the caller.
      // Log the error for debugging. In production you may want to use a
      // centralized logger and propagate the error instead of swallowing it.
      // Keep the method signature unchanged (returns null on error).
      print(
        'ProductRepositoryImpl.getById - DioError: ${e.message}, '
        'statusCode=${e.response?.statusCode}, data=${e.response?.data}',
      );
      return null;
    } catch (e, st) {
      // Any other unexpected error - log and return null.
      print('ProductRepositoryImpl.getById - Unexpected error: $e\n$st');
      return null;
    }
  }
}
