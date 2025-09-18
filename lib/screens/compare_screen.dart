import 'package:flutter/material.dart';
import '../data/frameworks_data.dart';

class CompareScreen extends StatelessWidget {
  const CompareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ejemplo: comparar rendimiento, curva de aprendizaje, comunidad (1-5)
    final metrics = {
      'Flutter': [5, 3, 5],
      'React Native': [4, 3, 5],
      'Ionic': [3, 2, 4],
      'Kotlin MP': [4, 4, 3],
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Comparativa')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            DataTable(columns: const [
              DataColumn(label: Text('Framework')),
              DataColumn(label: Text('Rendimiento')),
              DataColumn(label: Text('Curva aprendizaje')),
              DataColumn(label: Text('Comunidad')),
            ], rows: frameworksList.map((fw) {
              final m = metrics[fw.name]!;
              return DataRow(cells: [
                DataCell(Text(fw.name)),
                DataCell(Row(children: List.generate(m[0], (i) => const Icon(Icons.star, size: 14)))),
                DataCell(Row(children: List.generate(m[1], (i) => const Icon(Icons.school, size: 14)))),
                DataCell(Row(children: List.generate(m[2], (i) => const Icon(Icons.people, size: 14)))),
              ]);
            }).toList()),
            const SizedBox(height: 12),
            const Text('Comparativa por características (interactiva)'),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: frameworksList.length,
                itemBuilder: (context, index) {
                  final fw = frameworksList[index];
                  return Card(
                    child: ListTile(
                      leading: Image.asset(fw.imageAsset, width: 48, height: 48),
                      title: Text(fw.name),
                      subtitle: Text(fw.shortDescription),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
