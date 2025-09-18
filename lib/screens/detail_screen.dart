import 'package:flutter/material.dart';
import '../models/framework_model.dart';

class DetailScreen extends StatelessWidget {
  final FrameworkModel framework;
  const DetailScreen({required this.framework, super.key});

  Widget section(String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        ...items.map((i) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(children: [const Icon(Icons.check, size: 16), const SizedBox(width: 8), Expanded(child: Text(i))]),
        ))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(framework.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Hero(tag: framework.id, child: Image.asset(framework.imageAsset, width: 120, height: 120)),
            const SizedBox(height: 12),
            Text(framework.shortDescription),
            const SizedBox(height: 12),
            section('Ventajas', framework.advantages),
            section('Desventajas', framework.disadvantages),
            section('Ejemplos de uso', framework.examples),
          ],
        ),
      ),
    );
  }
}
