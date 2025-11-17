import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frame/data/repositories/product/product_repository_impl.dart';
import 'package:flutter_frame/data/services/api/api_service/product_api_service.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';
import 'package:flutter_frame/ui/screens/product_screen/view_models/product_notifier.dart';
import 'package:flutter_frame/ui/screens/product_screen/view_models/product_view_model_state.dart';
import 'package:flutter_frame/ui/widgets/carousel/image_carousel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductScreen extends StatelessWidget {
  final String id;

  const ProductScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ProductView(id: id),
      // body: const Text("toString"),
      appBar: AppBar(title: Text("Title")),
    );
  }
}

class _ProductView extends ConsumerStatefulWidget {
  final String id;

  const _ProductView({required this.id});

  @override
  ConsumerState<_ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends ConsumerState<_ProductView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(productProvider.notifier).fetchProducts(widget.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(productProvider.select((p) => p.status));

    return status == ProductViewModelStateStatus.initial ||
            status == ProductViewModelStateStatus.loading
        ? const Center(child: CircularProgressIndicator())
        : const _Content();
  }
}

class _Content extends ConsumerStatefulWidget {
  const _Content();

  @override
  ConsumerState<_Content> createState() => _ContentState();
}

class _ContentState extends ConsumerState<_Content> {
  CancelToken? cancelToken;

  void callApi() {
    final repo = ProductRepositoryImpl(
      productApiService: ProductApiService(
        dio: Dio(BaseOptions(baseUrl: "https://dummyjson.com/")),
      ),
    );
    cancelToken = CancelToken();
    repo.getById("2", cancelToken);
  }

  void cancelApi() {
    cancelToken?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final ProductModel? productModel = ref.watch(
      productProvider.select((state) => state.product),
    );

    if (productModel == null) return const Center(child: Text("No Data"));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.brand ?? "fallback",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(productModel.title),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: BoxBorder.all(
                color: (const Color.fromARGB(110, 242, 166, 255)),
                width: 4,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: ImageCarousel(imageUrls: productModel.images),
          ),
        ),
        // Use Expanded so ListView gets a bounded height inside Column.
        Expanded(
          child: ListView.builder(
            itemCount: productModel.reviews.length,
            itemBuilder: (context, index) {
              final review = productModel.reviews[index];
              final email = review.reviewerEmail.toString();
              final avatarText = email.isNotEmpty
                  ? email[0].toUpperCase()
                  : '?';
              return ListTile(
                leading: CircleAvatar(child: Text(avatarText)),
                title: Text(review.comment.toString()),
                subtitle: Text(review.reviewerName.toString()),
              );
            },
          ),
        ),
        Row(
          children: [
            FloatingActionButton(onPressed: callApi, child: Text("Call")),
            FloatingActionButton(onPressed: cancelApi, child: Text("Cancel")),
          ],
        ),
      ],
    );
  }
}
