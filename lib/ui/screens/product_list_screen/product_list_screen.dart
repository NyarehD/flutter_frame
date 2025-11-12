import 'package:flutter/material.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';
import 'package:flutter_frame/ui/screens/product_list_screen/view_models/product_list_notifier.dart';
import 'package:flutter_frame/ui/screens/product_list_screen/view_models/product_list_view_model_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: const _ProductListView());
  }
}

class _ProductListView extends ConsumerStatefulWidget {
  const _ProductListView();

  @override
  ConsumerState<_ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends ConsumerState<_ProductListView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(productListProvider.notifier).fetchProducts();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(productListProvider.select((p) => p.status));

    return status == ProductListViewModelStateStatus.initial
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
  @override
  Widget build(BuildContext context) {
    final List<ProductModel>? products = ref.watch(
      productListProvider.select((state) => state.products),
    );

    if (products == null) return const Center(child: Text("No Data"));
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        final avatarText = product.title.isNotEmpty
            ? product.title[0].toUpperCase()
            : '?';
        return ListTile(
          leading: CircleAvatar(child: Text(avatarText)),
          title: Text(product.title.toString()),
          subtitle: Text(product.brand.toString()),
          onTap: () => context.push("/product/${product.id}"),
        );
      },
    );
  }
}
