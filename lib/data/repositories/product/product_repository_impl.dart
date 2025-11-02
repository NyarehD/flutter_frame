import 'package:dio/dio.dart';
import 'package:flutter_frame/data/repositories/product/product_repository.dart';
import 'package:flutter_frame/data/services/api/api_client.dart';
import 'package:flutter_frame/data/services/api/model/product/product_api_model.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ApiClient _apiClient;

  ProductRepositoryImpl({required apiClient}) : _apiClient = apiClient;

  @override
  Future<ProductModel?> getById(String id) async {
    Response<ProductApiModel> result = await (_apiClient.dio.get(id));

    final data = result.data;

    if (data == null) return null;

    final api = data;

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
  }
}
