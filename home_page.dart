import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy produk
    final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        imageUrl: 'https://picsum.photos/200',
        stock: 15,
        rating: 4.5,
      ),
      Item(
        name: 'Salt',
        price: 2000,
        imageUrl: 'https://picsum.photos/201',
        stock: 20,
        rating: 4.8,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Shopping List')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Hero(
                      tag: item.name,
                      child: Image.network(
                        item.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Rp ${item.price}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Stok: ${item.stock} | ⭐ ${item.rating}'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}