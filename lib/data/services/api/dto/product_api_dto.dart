import 'package:flutter_frame/data/services/api/model/product/product_api_model.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';

class ProductApiDto {
  static ProductModel transform(ProductApiModel productData) => ProductModel(
    id: productData.id,
    title: productData.title,
    description: productData.description,
    category: productData.category,
    price: productData.price,
    discountPercentage: productData.discountPercentage,
    rating: productData.rating,
    stock: productData.stock,
    tags: productData.tags,
    brand: productData.brand,
    sku: productData.sku,
    weight: productData.weight,
    dimensions: ProductDimensions(
      width: productData.dimensions.width,
      height: productData.dimensions.height,
      depth: productData.dimensions.depth,
    ),
    warrantyInformation: productData.warrantyInformation,
    shippingInformation: productData.shippingInformation,
    availabilityStatus: productData.availabilityStatus,
    reviews: productData.reviews
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
    returnPolicy: productData.returnPolicy,
    minimumOrderQuantity: productData.minimumOrderQuantity,
    meta: ProductMeta(
      createdAt: productData.meta.createdAt,
      updatedAt: productData.meta.updatedAt,
      barcode: productData.meta.barcode,
      qrCode: productData.meta.qrCode,
    ),
    images: (productData.images),
    thumbnail: productData.thumbnail,
  );
}
