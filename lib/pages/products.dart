import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/router.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ALL PRODUCT')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              // context.go('/ProductPage/${index + 1}');
              context.goNamed(
                routs.DetailProduct,
                pathParameters: {
                  "id": "${index}"
                  },
                queryParameters: {
                  "id":"${index + 1}",
                  "title":'product ${index + 1}',
                  'deskripsi': 'Deskripsi Produk ${index + 1}'
                  },
              );
            },
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text('product ${index + 1}'),
            subtitle: Text('Deskripsi Produk ${index + 1}'),
          );
        },
      ),
    );
  }
}
