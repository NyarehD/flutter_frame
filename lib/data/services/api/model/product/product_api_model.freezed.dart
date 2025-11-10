// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductApiModel implements DiagnosticableTreeMixin {

 int get id; String get title; String get description; String get category; double get price; double get discountPercentage; double get rating; int get stock; List<String> get tags; String? get brand; String get sku; int get weight; ProductApiDimensions get dimensions; String get warrantyInformation; String get shippingInformation; String get availabilityStatus; List<ProductApiReview> get reviews; String get returnPolicy; int get minimumOrderQuantity; ProductApiMeta get meta; List<String> get images; String get thumbnail;
/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductApiModelCopyWith<ProductApiModel> get copyWith => _$ProductApiModelCopyWithImpl<ProductApiModel>(this as ProductApiModel, _$identity);

  /// Serializes this ProductApiModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('discountPercentage', discountPercentage))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('stock', stock))..add(DiagnosticsProperty('tags', tags))..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('sku', sku))..add(DiagnosticsProperty('weight', weight))..add(DiagnosticsProperty('dimensions', dimensions))..add(DiagnosticsProperty('warrantyInformation', warrantyInformation))..add(DiagnosticsProperty('shippingInformation', shippingInformation))..add(DiagnosticsProperty('availabilityStatus', availabilityStatus))..add(DiagnosticsProperty('reviews', reviews))..add(DiagnosticsProperty('returnPolicy', returnPolicy))..add(DiagnosticsProperty('minimumOrderQuantity', minimumOrderQuantity))..add(DiagnosticsProperty('meta', meta))..add(DiagnosticsProperty('images', images))..add(DiagnosticsProperty('thumbnail', thumbnail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&(identical(other.warrantyInformation, warrantyInformation) || other.warrantyInformation == warrantyInformation)&&(identical(other.shippingInformation, shippingInformation) || other.shippingInformation == shippingInformation)&&(identical(other.availabilityStatus, availabilityStatus) || other.availabilityStatus == availabilityStatus)&&const DeepCollectionEquality().equals(other.reviews, reviews)&&(identical(other.returnPolicy, returnPolicy) || other.returnPolicy == returnPolicy)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,category,price,discountPercentage,rating,stock,const DeepCollectionEquality().hash(tags),brand,sku,weight,dimensions,warrantyInformation,shippingInformation,availabilityStatus,const DeepCollectionEquality().hash(reviews),returnPolicy,minimumOrderQuantity,meta,const DeepCollectionEquality().hash(images),thumbnail]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiModel(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $ProductApiModelCopyWith<$Res>  {
  factory $ProductApiModelCopyWith(ProductApiModel value, $Res Function(ProductApiModel) _then) = _$ProductApiModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String category, double price, double discountPercentage, double rating, int stock, List<String> tags, String? brand, String sku, int weight, ProductApiDimensions dimensions, String warrantyInformation, String shippingInformation, String availabilityStatus, List<ProductApiReview> reviews, String returnPolicy, int minimumOrderQuantity, ProductApiMeta meta, List<String> images, String thumbnail
});


$ProductApiDimensionsCopyWith<$Res> get dimensions;$ProductApiMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$ProductApiModelCopyWithImpl<$Res>
    implements $ProductApiModelCopyWith<$Res> {
  _$ProductApiModelCopyWithImpl(this._self, this._then);

  final ProductApiModel _self;
  final $Res Function(ProductApiModel) _then;

/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? category = null,Object? price = null,Object? discountPercentage = null,Object? rating = null,Object? stock = null,Object? tags = null,Object? brand = freezed,Object? sku = null,Object? weight = null,Object? dimensions = null,Object? warrantyInformation = null,Object? shippingInformation = null,Object? availabilityStatus = null,Object? reviews = null,Object? returnPolicy = null,Object? minimumOrderQuantity = null,Object? meta = null,Object? images = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,dimensions: null == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as ProductApiDimensions,warrantyInformation: null == warrantyInformation ? _self.warrantyInformation : warrantyInformation // ignore: cast_nullable_to_non_nullable
as String,shippingInformation: null == shippingInformation ? _self.shippingInformation : shippingInformation // ignore: cast_nullable_to_non_nullable
as String,availabilityStatus: null == availabilityStatus ? _self.availabilityStatus : availabilityStatus // ignore: cast_nullable_to_non_nullable
as String,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ProductApiReview>,returnPolicy: null == returnPolicy ? _self.returnPolicy : returnPolicy // ignore: cast_nullable_to_non_nullable
as String,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ProductApiMeta,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductApiDimensionsCopyWith<$Res> get dimensions {
  
  return $ProductApiDimensionsCopyWith<$Res>(_self.dimensions, (value) {
    return _then(_self.copyWith(dimensions: value));
  });
}/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductApiMetaCopyWith<$Res> get meta {
  
  return $ProductApiMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductApiModel].
extension ProductApiModelPatterns on ProductApiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductApiModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductApiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductApiModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String category,  double price,  double discountPercentage,  double rating,  int stock,  List<String> tags,  String? brand,  String sku,  int weight,  ProductApiDimensions dimensions,  String warrantyInformation,  String shippingInformation,  String availabilityStatus,  List<ProductApiReview> reviews,  String returnPolicy,  int minimumOrderQuantity,  ProductApiMeta meta,  List<String> images,  String thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductApiModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.category,_that.price,_that.discountPercentage,_that.rating,_that.stock,_that.tags,_that.brand,_that.sku,_that.weight,_that.dimensions,_that.warrantyInformation,_that.shippingInformation,_that.availabilityStatus,_that.reviews,_that.returnPolicy,_that.minimumOrderQuantity,_that.meta,_that.images,_that.thumbnail);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String category,  double price,  double discountPercentage,  double rating,  int stock,  List<String> tags,  String? brand,  String sku,  int weight,  ProductApiDimensions dimensions,  String warrantyInformation,  String shippingInformation,  String availabilityStatus,  List<ProductApiReview> reviews,  String returnPolicy,  int minimumOrderQuantity,  ProductApiMeta meta,  List<String> images,  String thumbnail)  $default,) {final _that = this;
switch (_that) {
case _ProductApiModel():
return $default(_that.id,_that.title,_that.description,_that.category,_that.price,_that.discountPercentage,_that.rating,_that.stock,_that.tags,_that.brand,_that.sku,_that.weight,_that.dimensions,_that.warrantyInformation,_that.shippingInformation,_that.availabilityStatus,_that.reviews,_that.returnPolicy,_that.minimumOrderQuantity,_that.meta,_that.images,_that.thumbnail);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  String category,  double price,  double discountPercentage,  double rating,  int stock,  List<String> tags,  String? brand,  String sku,  int weight,  ProductApiDimensions dimensions,  String warrantyInformation,  String shippingInformation,  String availabilityStatus,  List<ProductApiReview> reviews,  String returnPolicy,  int minimumOrderQuantity,  ProductApiMeta meta,  List<String> images,  String thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _ProductApiModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.category,_that.price,_that.discountPercentage,_that.rating,_that.stock,_that.tags,_that.brand,_that.sku,_that.weight,_that.dimensions,_that.warrantyInformation,_that.shippingInformation,_that.availabilityStatus,_that.reviews,_that.returnPolicy,_that.minimumOrderQuantity,_that.meta,_that.images,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductApiModel with DiagnosticableTreeMixin implements ProductApiModel {
  const _ProductApiModel({required this.id, required this.title, required this.description, required this.category, required this.price, required this.discountPercentage, required this.rating, required this.stock, required final  List<String> tags, required this.brand, required this.sku, required this.weight, required this.dimensions, required this.warrantyInformation, required this.shippingInformation, required this.availabilityStatus, required final  List<ProductApiReview> reviews, required this.returnPolicy, required this.minimumOrderQuantity, required this.meta, required final  List<String> images, required this.thumbnail}): _tags = tags,_reviews = reviews,_images = images;
  factory _ProductApiModel.fromJson(Map<String, dynamic> json) => _$ProductApiModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String description;
@override final  String category;
@override final  double price;
@override final  double discountPercentage;
@override final  double rating;
@override final  int stock;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String? brand;
@override final  String sku;
@override final  int weight;
@override final  ProductApiDimensions dimensions;
@override final  String warrantyInformation;
@override final  String shippingInformation;
@override final  String availabilityStatus;
 final  List<ProductApiReview> _reviews;
@override List<ProductApiReview> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override final  String returnPolicy;
@override final  int minimumOrderQuantity;
@override final  ProductApiMeta meta;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String thumbnail;

/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductApiModelCopyWith<_ProductApiModel> get copyWith => __$ProductApiModelCopyWithImpl<_ProductApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductApiModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('discountPercentage', discountPercentage))..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('stock', stock))..add(DiagnosticsProperty('tags', tags))..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('sku', sku))..add(DiagnosticsProperty('weight', weight))..add(DiagnosticsProperty('dimensions', dimensions))..add(DiagnosticsProperty('warrantyInformation', warrantyInformation))..add(DiagnosticsProperty('shippingInformation', shippingInformation))..add(DiagnosticsProperty('availabilityStatus', availabilityStatus))..add(DiagnosticsProperty('reviews', reviews))..add(DiagnosticsProperty('returnPolicy', returnPolicy))..add(DiagnosticsProperty('minimumOrderQuantity', minimumOrderQuantity))..add(DiagnosticsProperty('meta', meta))..add(DiagnosticsProperty('images', images))..add(DiagnosticsProperty('thumbnail', thumbnail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&(identical(other.warrantyInformation, warrantyInformation) || other.warrantyInformation == warrantyInformation)&&(identical(other.shippingInformation, shippingInformation) || other.shippingInformation == shippingInformation)&&(identical(other.availabilityStatus, availabilityStatus) || other.availabilityStatus == availabilityStatus)&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&(identical(other.returnPolicy, returnPolicy) || other.returnPolicy == returnPolicy)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,category,price,discountPercentage,rating,stock,const DeepCollectionEquality().hash(_tags),brand,sku,weight,dimensions,warrantyInformation,shippingInformation,availabilityStatus,const DeepCollectionEquality().hash(_reviews),returnPolicy,minimumOrderQuantity,meta,const DeepCollectionEquality().hash(_images),thumbnail]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiModel(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$ProductApiModelCopyWith<$Res> implements $ProductApiModelCopyWith<$Res> {
  factory _$ProductApiModelCopyWith(_ProductApiModel value, $Res Function(_ProductApiModel) _then) = __$ProductApiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String category, double price, double discountPercentage, double rating, int stock, List<String> tags, String? brand, String sku, int weight, ProductApiDimensions dimensions, String warrantyInformation, String shippingInformation, String availabilityStatus, List<ProductApiReview> reviews, String returnPolicy, int minimumOrderQuantity, ProductApiMeta meta, List<String> images, String thumbnail
});


@override $ProductApiDimensionsCopyWith<$Res> get dimensions;@override $ProductApiMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$ProductApiModelCopyWithImpl<$Res>
    implements _$ProductApiModelCopyWith<$Res> {
  __$ProductApiModelCopyWithImpl(this._self, this._then);

  final _ProductApiModel _self;
  final $Res Function(_ProductApiModel) _then;

/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? category = null,Object? price = null,Object? discountPercentage = null,Object? rating = null,Object? stock = null,Object? tags = null,Object? brand = freezed,Object? sku = null,Object? weight = null,Object? dimensions = null,Object? warrantyInformation = null,Object? shippingInformation = null,Object? availabilityStatus = null,Object? reviews = null,Object? returnPolicy = null,Object? minimumOrderQuantity = null,Object? meta = null,Object? images = null,Object? thumbnail = null,}) {
  return _then(_ProductApiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,dimensions: null == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as ProductApiDimensions,warrantyInformation: null == warrantyInformation ? _self.warrantyInformation : warrantyInformation // ignore: cast_nullable_to_non_nullable
as String,shippingInformation: null == shippingInformation ? _self.shippingInformation : shippingInformation // ignore: cast_nullable_to_non_nullable
as String,availabilityStatus: null == availabilityStatus ? _self.availabilityStatus : availabilityStatus // ignore: cast_nullable_to_non_nullable
as String,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ProductApiReview>,returnPolicy: null == returnPolicy ? _self.returnPolicy : returnPolicy // ignore: cast_nullable_to_non_nullable
as String,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ProductApiMeta,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductApiDimensionsCopyWith<$Res> get dimensions {
  
  return $ProductApiDimensionsCopyWith<$Res>(_self.dimensions, (value) {
    return _then(_self.copyWith(dimensions: value));
  });
}/// Create a copy of ProductApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductApiMetaCopyWith<$Res> get meta {
  
  return $ProductApiMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ProductApiMeta implements DiagnosticableTreeMixin {

 DateTime get createdAt; DateTime get updatedAt; String get barcode; String get qrCode;
/// Create a copy of ProductApiMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductApiMetaCopyWith<ProductApiMeta> get copyWith => _$ProductApiMetaCopyWithImpl<ProductApiMeta>(this as ProductApiMeta, _$identity);

  /// Serializes this ProductApiMeta to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiMeta'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('barcode', barcode))..add(DiagnosticsProperty('qrCode', qrCode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductApiMeta&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,barcode,qrCode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiMeta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class $ProductApiMetaCopyWith<$Res>  {
  factory $ProductApiMetaCopyWith(ProductApiMeta value, $Res Function(ProductApiMeta) _then) = _$ProductApiMetaCopyWithImpl;
@useResult
$Res call({
 DateTime createdAt, DateTime updatedAt, String barcode, String qrCode
});




}
/// @nodoc
class _$ProductApiMetaCopyWithImpl<$Res>
    implements $ProductApiMetaCopyWith<$Res> {
  _$ProductApiMetaCopyWithImpl(this._self, this._then);

  final ProductApiMeta _self;
  final $Res Function(ProductApiMeta) _then;

/// Create a copy of ProductApiMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? updatedAt = null,Object? barcode = null,Object? qrCode = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductApiMeta].
extension ProductApiMetaPatterns on ProductApiMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductApiMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductApiMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductApiMeta value)  $default,){
final _that = this;
switch (_that) {
case _ProductApiMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductApiMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ProductApiMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime createdAt,  DateTime updatedAt,  String barcode,  String qrCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductApiMeta() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.barcode,_that.qrCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime createdAt,  DateTime updatedAt,  String barcode,  String qrCode)  $default,) {final _that = this;
switch (_that) {
case _ProductApiMeta():
return $default(_that.createdAt,_that.updatedAt,_that.barcode,_that.qrCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime createdAt,  DateTime updatedAt,  String barcode,  String qrCode)?  $default,) {final _that = this;
switch (_that) {
case _ProductApiMeta() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.barcode,_that.qrCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductApiMeta with DiagnosticableTreeMixin implements ProductApiMeta {
  const _ProductApiMeta({required this.createdAt, required this.updatedAt, required this.barcode, required this.qrCode});
  factory _ProductApiMeta.fromJson(Map<String, dynamic> json) => _$ProductApiMetaFromJson(json);

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String barcode;
@override final  String qrCode;

/// Create a copy of ProductApiMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductApiMetaCopyWith<_ProductApiMeta> get copyWith => __$ProductApiMetaCopyWithImpl<_ProductApiMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductApiMetaToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiMeta'))
    ..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('barcode', barcode))..add(DiagnosticsProperty('qrCode', qrCode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductApiMeta&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,barcode,qrCode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiMeta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$ProductApiMetaCopyWith<$Res> implements $ProductApiMetaCopyWith<$Res> {
  factory _$ProductApiMetaCopyWith(_ProductApiMeta value, $Res Function(_ProductApiMeta) _then) = __$ProductApiMetaCopyWithImpl;
@override @useResult
$Res call({
 DateTime createdAt, DateTime updatedAt, String barcode, String qrCode
});




}
/// @nodoc
class __$ProductApiMetaCopyWithImpl<$Res>
    implements _$ProductApiMetaCopyWith<$Res> {
  __$ProductApiMetaCopyWithImpl(this._self, this._then);

  final _ProductApiMeta _self;
  final $Res Function(_ProductApiMeta) _then;

/// Create a copy of ProductApiMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? updatedAt = null,Object? barcode = null,Object? qrCode = null,}) {
  return _then(_ProductApiMeta(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductApiDimensions implements DiagnosticableTreeMixin {

 double get width; double get height; double get depth;
/// Create a copy of ProductApiDimensions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductApiDimensionsCopyWith<ProductApiDimensions> get copyWith => _$ProductApiDimensionsCopyWithImpl<ProductApiDimensions>(this as ProductApiDimensions, _$identity);

  /// Serializes this ProductApiDimensions to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiDimensions'))
    ..add(DiagnosticsProperty('width', width))..add(DiagnosticsProperty('height', height))..add(DiagnosticsProperty('depth', depth));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductApiDimensions&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,depth);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiDimensions(width: $width, height: $height, depth: $depth)';
}


}

/// @nodoc
abstract mixin class $ProductApiDimensionsCopyWith<$Res>  {
  factory $ProductApiDimensionsCopyWith(ProductApiDimensions value, $Res Function(ProductApiDimensions) _then) = _$ProductApiDimensionsCopyWithImpl;
@useResult
$Res call({
 double width, double height, double depth
});




}
/// @nodoc
class _$ProductApiDimensionsCopyWithImpl<$Res>
    implements $ProductApiDimensionsCopyWith<$Res> {
  _$ProductApiDimensionsCopyWithImpl(this._self, this._then);

  final ProductApiDimensions _self;
  final $Res Function(ProductApiDimensions) _then;

/// Create a copy of ProductApiDimensions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = null,Object? height = null,Object? depth = null,}) {
  return _then(_self.copyWith(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductApiDimensions].
extension ProductApiDimensionsPatterns on ProductApiDimensions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductApiDimensions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductApiDimensions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductApiDimensions value)  $default,){
final _that = this;
switch (_that) {
case _ProductApiDimensions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductApiDimensions value)?  $default,){
final _that = this;
switch (_that) {
case _ProductApiDimensions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double width,  double height,  double depth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductApiDimensions() when $default != null:
return $default(_that.width,_that.height,_that.depth);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double width,  double height,  double depth)  $default,) {final _that = this;
switch (_that) {
case _ProductApiDimensions():
return $default(_that.width,_that.height,_that.depth);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double width,  double height,  double depth)?  $default,) {final _that = this;
switch (_that) {
case _ProductApiDimensions() when $default != null:
return $default(_that.width,_that.height,_that.depth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductApiDimensions with DiagnosticableTreeMixin implements ProductApiDimensions {
  const _ProductApiDimensions({required this.width, required this.height, required this.depth});
  factory _ProductApiDimensions.fromJson(Map<String, dynamic> json) => _$ProductApiDimensionsFromJson(json);

@override final  double width;
@override final  double height;
@override final  double depth;

/// Create a copy of ProductApiDimensions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductApiDimensionsCopyWith<_ProductApiDimensions> get copyWith => __$ProductApiDimensionsCopyWithImpl<_ProductApiDimensions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductApiDimensionsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiDimensions'))
    ..add(DiagnosticsProperty('width', width))..add(DiagnosticsProperty('height', height))..add(DiagnosticsProperty('depth', depth));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductApiDimensions&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,depth);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiDimensions(width: $width, height: $height, depth: $depth)';
}


}

/// @nodoc
abstract mixin class _$ProductApiDimensionsCopyWith<$Res> implements $ProductApiDimensionsCopyWith<$Res> {
  factory _$ProductApiDimensionsCopyWith(_ProductApiDimensions value, $Res Function(_ProductApiDimensions) _then) = __$ProductApiDimensionsCopyWithImpl;
@override @useResult
$Res call({
 double width, double height, double depth
});




}
/// @nodoc
class __$ProductApiDimensionsCopyWithImpl<$Res>
    implements _$ProductApiDimensionsCopyWith<$Res> {
  __$ProductApiDimensionsCopyWithImpl(this._self, this._then);

  final _ProductApiDimensions _self;
  final $Res Function(_ProductApiDimensions) _then;

/// Create a copy of ProductApiDimensions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = null,Object? height = null,Object? depth = null,}) {
  return _then(_ProductApiDimensions(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ProductApiReview implements DiagnosticableTreeMixin {

 int get rating; String get comment; DateTime get date; String get reviewerName; String get reviewerEmail;
/// Create a copy of ProductApiReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductApiReviewCopyWith<ProductApiReview> get copyWith => _$ProductApiReviewCopyWithImpl<ProductApiReview>(this as ProductApiReview, _$identity);

  /// Serializes this ProductApiReview to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiReview'))
    ..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('reviewerName', reviewerName))..add(DiagnosticsProperty('reviewerEmail', reviewerEmail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductApiReview&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date)&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.reviewerEmail, reviewerEmail) || other.reviewerEmail == reviewerEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,comment,date,reviewerName,reviewerEmail);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiReview(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
}


}

/// @nodoc
abstract mixin class $ProductApiReviewCopyWith<$Res>  {
  factory $ProductApiReviewCopyWith(ProductApiReview value, $Res Function(ProductApiReview) _then) = _$ProductApiReviewCopyWithImpl;
@useResult
$Res call({
 int rating, String comment, DateTime date, String reviewerName, String reviewerEmail
});




}
/// @nodoc
class _$ProductApiReviewCopyWithImpl<$Res>
    implements $ProductApiReviewCopyWith<$Res> {
  _$ProductApiReviewCopyWithImpl(this._self, this._then);

  final ProductApiReview _self;
  final $Res Function(ProductApiReview) _then;

/// Create a copy of ProductApiReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? comment = null,Object? date = null,Object? reviewerName = null,Object? reviewerEmail = null,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,reviewerEmail: null == reviewerEmail ? _self.reviewerEmail : reviewerEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductApiReview].
extension ProductApiReviewPatterns on ProductApiReview {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductApiReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductApiReview() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductApiReview value)  $default,){
final _that = this;
switch (_that) {
case _ProductApiReview():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductApiReview value)?  $default,){
final _that = this;
switch (_that) {
case _ProductApiReview() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rating,  String comment,  DateTime date,  String reviewerName,  String reviewerEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductApiReview() when $default != null:
return $default(_that.rating,_that.comment,_that.date,_that.reviewerName,_that.reviewerEmail);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rating,  String comment,  DateTime date,  String reviewerName,  String reviewerEmail)  $default,) {final _that = this;
switch (_that) {
case _ProductApiReview():
return $default(_that.rating,_that.comment,_that.date,_that.reviewerName,_that.reviewerEmail);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rating,  String comment,  DateTime date,  String reviewerName,  String reviewerEmail)?  $default,) {final _that = this;
switch (_that) {
case _ProductApiReview() when $default != null:
return $default(_that.rating,_that.comment,_that.date,_that.reviewerName,_that.reviewerEmail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductApiReview with DiagnosticableTreeMixin implements ProductApiReview {
  const _ProductApiReview({required this.rating, required this.comment, required this.date, required this.reviewerName, required this.reviewerEmail});
  factory _ProductApiReview.fromJson(Map<String, dynamic> json) => _$ProductApiReviewFromJson(json);

@override final  int rating;
@override final  String comment;
@override final  DateTime date;
@override final  String reviewerName;
@override final  String reviewerEmail;

/// Create a copy of ProductApiReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductApiReviewCopyWith<_ProductApiReview> get copyWith => __$ProductApiReviewCopyWithImpl<_ProductApiReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductApiReviewToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductApiReview'))
    ..add(DiagnosticsProperty('rating', rating))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('reviewerName', reviewerName))..add(DiagnosticsProperty('reviewerEmail', reviewerEmail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductApiReview&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date)&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.reviewerEmail, reviewerEmail) || other.reviewerEmail == reviewerEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,comment,date,reviewerName,reviewerEmail);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductApiReview(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
}


}

/// @nodoc
abstract mixin class _$ProductApiReviewCopyWith<$Res> implements $ProductApiReviewCopyWith<$Res> {
  factory _$ProductApiReviewCopyWith(_ProductApiReview value, $Res Function(_ProductApiReview) _then) = __$ProductApiReviewCopyWithImpl;
@override @useResult
$Res call({
 int rating, String comment, DateTime date, String reviewerName, String reviewerEmail
});




}
/// @nodoc
class __$ProductApiReviewCopyWithImpl<$Res>
    implements _$ProductApiReviewCopyWith<$Res> {
  __$ProductApiReviewCopyWithImpl(this._self, this._then);

  final _ProductApiReview _self;
  final $Res Function(_ProductApiReview) _then;

/// Create a copy of ProductApiReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? comment = null,Object? date = null,Object? reviewerName = null,Object? reviewerEmail = null,}) {
  return _then(_ProductApiReview(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,reviewerEmail: null == reviewerEmail ? _self.reviewerEmail : reviewerEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
