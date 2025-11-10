// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductListApiModel {

 int get total; int get skip; int get limit; List<ProductApiModel> get products;
/// Create a copy of ProductListApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListApiModelCopyWith<ProductListApiModel> get copyWith => _$ProductListApiModelCopyWithImpl<ProductListApiModel>(this as ProductListApiModel, _$identity);

  /// Serializes this ProductListApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListApiModel&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,skip,limit,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ProductListApiModel(total: $total, skip: $skip, limit: $limit, products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductListApiModelCopyWith<$Res>  {
  factory $ProductListApiModelCopyWith(ProductListApiModel value, $Res Function(ProductListApiModel) _then) = _$ProductListApiModelCopyWithImpl;
@useResult
$Res call({
 int total, int skip, int limit, List<ProductApiModel> products
});




}
/// @nodoc
class _$ProductListApiModelCopyWithImpl<$Res>
    implements $ProductListApiModelCopyWith<$Res> {
  _$ProductListApiModelCopyWithImpl(this._self, this._then);

  final ProductListApiModel _self;
  final $Res Function(ProductListApiModel) _then;

/// Create a copy of ProductListApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? skip = null,Object? limit = null,Object? products = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductApiModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductListApiModel].
extension ProductListApiModelPatterns on ProductListApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductListApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int skip,  int limit,  List<ProductApiModel> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListApiModel() when $default != null:
return $default(_that.total,_that.skip,_that.limit,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int skip,  int limit,  List<ProductApiModel> products)  $default,) {final _that = this;
switch (_that) {
case _ProductListApiModel():
return $default(_that.total,_that.skip,_that.limit,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int skip,  int limit,  List<ProductApiModel> products)?  $default,) {final _that = this;
switch (_that) {
case _ProductListApiModel() when $default != null:
return $default(_that.total,_that.skip,_that.limit,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductListApiModel implements ProductListApiModel {
  const _ProductListApiModel({required this.total, required this.skip, required this.limit, required final  List<ProductApiModel> products}): _products = products;
  factory _ProductListApiModel.fromJson(Map<String, dynamic> json) => _$ProductListApiModelFromJson(json);

@override final  int total;
@override final  int skip;
@override final  int limit;
 final  List<ProductApiModel> _products;
@override List<ProductApiModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListApiModelCopyWith<_ProductListApiModel> get copyWith => __$ProductListApiModelCopyWithImpl<_ProductListApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductListApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListApiModel&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,skip,limit,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductListApiModel(total: $total, skip: $skip, limit: $limit, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProductListApiModelCopyWith<$Res> implements $ProductListApiModelCopyWith<$Res> {
  factory _$ProductListApiModelCopyWith(_ProductListApiModel value, $Res Function(_ProductListApiModel) _then) = __$ProductListApiModelCopyWithImpl;
@override @useResult
$Res call({
 int total, int skip, int limit, List<ProductApiModel> products
});




}
/// @nodoc
class __$ProductListApiModelCopyWithImpl<$Res>
    implements _$ProductListApiModelCopyWith<$Res> {
  __$ProductListApiModelCopyWithImpl(this._self, this._then);

  final _ProductListApiModel _self;
  final $Res Function(_ProductListApiModel) _then;

/// Create a copy of ProductListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? skip = null,Object? limit = null,Object? products = null,}) {
  return _then(_ProductListApiModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductApiModel>,
  ));
}


}

// dart format on
