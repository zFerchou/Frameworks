import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/framework_model.dart';

class DetailScreen extends StatelessWidget {
  final FrameworkModel framework;
  const DetailScreen({required this.framework, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(framework.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Hero(
              tag: framework.id,
              child: Image.asset(framework.imageAsset, width: 150, height: 150),
            ),
            const SizedBox(height: 12),
            Text(framework.shortDescription, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),

            // 🚀 Aquí usamos el carrusel definido en el modelo
            if (framework.carousel != null && framework.carousel!.isNotEmpty)
              CarouselSlider(
                items: framework.carousel!.map((item) {
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
                          offset: Offset(0, 3),
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
          ],
        ),
      ),
    );
  }
}
