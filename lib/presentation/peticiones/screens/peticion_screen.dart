import 'package:flutter/material.dart';
import 'package:proyecto2/config/services/product_service.dart';
import 'package:proyecto2/models/product_model.dart';

class PeticionScreen extends StatelessWidget {
  const PeticionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Peticion'),
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: ProductService().getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('No disponible por ahora'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay datos'));
          }

          final products = snapshot.data!;

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                title: Text(product.title),
                subtitle: Text(product.description),
                leading: Image.network(product.image),
              );
            },
          );
        },
      ),
    );
  }
}