import 'package:flutter_frame/ui/screens/product_list_screen/product_list_screen.dart';
import 'package:flutter_frame/ui/screens/product_screen/product_screen.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ProductListScreen();
      },
    ),
    GoRoute(
      path: "/product/:productId",
      builder: (context, state) =>
          ProductScreen(id: state.pathParameters["productId"] ?? ""),
    ),
  ],
);
