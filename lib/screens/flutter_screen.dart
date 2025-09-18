import 'package:flutter/material.dart';
import '../models/framework_model.dart';
import '../widgets/framework_card.dart';
import '../data/frameworks_data.dart';

class FlutterScreen extends StatelessWidget {
  const FlutterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener el framework de Flutter desde la lista de datos
    final FrameworkModel flutterFramework =
        frameworksList.firstWhere((f) => f.id == 'flutter');

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Framework',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: FlutterFrameworkCard(framework: flutterFramework),
      ),
    );
  }
}
