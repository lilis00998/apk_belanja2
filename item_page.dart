import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(itemArgs.name)),
      body: Column(
        children: [
          Hero(
            tag: itemArgs.name,
            child: Image.network(
              itemArgs.imageUrl,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            itemArgs.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('Harga: Rp ${itemArgs.price}', style: const TextStyle(fontSize: 18)),
          Text('Stok Tersedia: ${itemArgs.stock}', style: const TextStyle(fontSize: 16)),
          Text('Rating Produk: ⭐ ${itemArgs.rating}', style: const TextStyle(fontSize: 16)),
          const Spacer(),
          // Footer Identitas
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: const Text(
              'Lilis Wijayanti - 24.52.0005',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}