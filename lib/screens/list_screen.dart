import 'package:flutter/material.dart';
import '../data/frameworks_data.dart';
import 'detail_screen.dart';
import 'compare_screen.dart';
import '../widgets/framework_card.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Frameworks Móviles',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 4,
      ),
      body: Column(
        children: [
          // Encabezado informativo
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.indigo.shade50,
            child: const Text(
              'Selecciona un framework para ver sus detalles',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.indigo),
            ),
          ),
          
          // Lista de frameworks
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: frameworksList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  childAspectRatio: 0.8, // Ajustado para mejor proporción
                ),
                itemBuilder: (context, index) {
                  final fw = frameworksList[index];
                  return FlutterFrameworkCard(
                    framework: fw,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailScreen(framework: fw),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          
          // Botón de comparativa
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey.shade100,
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CompareScreen(),
                  ),
                ),
                icon: const Icon(Icons.compare),
                label: const Text(
                  'Comparativa rápida',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}