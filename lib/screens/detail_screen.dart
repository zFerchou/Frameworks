import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/framework_model.dart';

class DetailScreen extends StatelessWidget {
  final FrameworkModel framework;
  const DetailScreen({required this.framework, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(framework.name), centerTitle: true, backgroundColor: Colors.indigo),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: framework.id,
              child: Image.asset(framework.imageAsset, width: 150, height: 150),
            ),
            const SizedBox(height: 12),
            Text(framework.shortDescription, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),

            // Carrusel
            if (framework.carousel.isNotEmpty)
              CarouselSlider(
                items: framework.carousel.map((item) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.title,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Text(item.content, style: const TextStyle(fontSize: 16)),
                      ],
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 220,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  viewportFraction: 0.9,
                ),
              ),

            const SizedBox(height: 20),

            // Ventajas
            Text('Ventajas', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.green, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            ...framework.advantages.map((a) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green, size: 18),
                      const SizedBox(width: 6),
                      Expanded(child: Text(a, style: const TextStyle(fontSize: 16))),
                    ],
                  ),
                )),

            const SizedBox(height: 16),

            // Desventajas
            Text('Desventajas', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.red, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            ...framework.disadvantages.map((d) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    children: [
                      const Icon(Icons.cancel, color: Colors.red, size: 18),
                      const SizedBox(width: 6),
                      Expanded(child: Text(d, style: const TextStyle(fontSize: 16))),
                    ],
                  ),
                )),

            const SizedBox(height: 16),

            // Ejemplos
            Text('Ejemplos', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.blue, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            ...framework.examples.map((e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.blue, size: 18),
                      const SizedBox(width: 6),
                      Expanded(child: Text(e, style: const TextStyle(fontSize: 16))),
                    ],
                  ),
                )),

            const SizedBox(height: 16),

            // More info
            Text('Más información', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.indigo, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Card(
              color: Colors.indigo.shade50,
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(framework.moreInfo, style: const TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
