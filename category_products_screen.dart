import 'package:flutter/material.dart';
import '../services/data_service.dart';
import '../models/product.dart';
import '../models/category.dart';
import '../theme/app_theme.dart';
import '../widgets/product_card.dart';

class CategoryProductsScreen extends StatelessWidget {
  final Category category;

  const CategoryProductsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final products = DataService.getProductsByCategory(category.name);

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: products.isEmpty
          ? const Center(child: Text('Nenhum produto encontrado'))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
    );
  }
}
