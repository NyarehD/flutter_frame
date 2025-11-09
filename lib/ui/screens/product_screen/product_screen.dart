import 'package:flutter/material.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';
import 'package:flutter_frame/ui/screens/product_screen/view_models/product_notifier.dart';
import 'package:flutter_frame/ui/screens/product_screen/view_models/product_view_model_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ProductView(),
      appBar: AppBar(title: Text("Title")),
    );
  }
}

class _ProductView extends ConsumerStatefulWidget {
  const _ProductView({super.key});

  @override
  ConsumerState<_ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends ConsumerState<_ProductView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(productProvider.notifier).fetchProducts();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(productProvider.select((p) => p.status));

    return status == ProductViewModelStateStatus.initial
        ? const Center(child: CircularProgressIndicator())
        : const _Content();
  }
}

class _Content extends ConsumerStatefulWidget {
  const _Content({super.key});

  @override
  ConsumerState<_Content> createState() => _ContentState();
}

class _ContentState extends ConsumerState<_Content> {
  @override
  Widget build(BuildContext context) {
    ProductModel? productModel = ref.read(
      productProvider.select((state) => state.product),
    );

    if (productModel == null) return const Center(child: Text("No Data"));

    return Column(
      children: [Text(productModel.brand), Text(productModel.title)],
    );
  }
}
