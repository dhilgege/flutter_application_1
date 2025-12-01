// import 'package:flutter_application_1/pages/products.dart'; 
// import 'package:flutter_application_1/pages/detail_product.dart';
import 'package:go_router/go_router.dart';
import '../pages/home.dart';
import '../pages/settings.dart';
import '../pages/products.dart';
import '../pages/detail_product.dart';
import '../pages/error.dart';

part 'route_name.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/',
      name: routs.home,
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
      path: 'ProductPage',
      name: routs.products,
      builder:(context, state) => ProductPage(),
      routes: [
        GoRoute(
      path: ':id',
      name: routs.DetailProduct,
      builder:(context, state) => DetailProductPage(
        state.pathParameters ['id'].toString(),
        state.uri.queryParameters,
      ),
    ),
      ],
    ),
      ],
    ),
     GoRoute(
      path: '/settings',
      name: routs.Settings,
      builder:(context, state) => Settings(),
    ),
  ],
);

   

