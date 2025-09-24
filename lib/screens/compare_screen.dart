import 'package:flutter/material.dart';
import '../data/frameworks_data.dart';
import '../models/framework_model.dart';

class CompareScreen extends StatelessWidget {
  const CompareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comparativa Rápida'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text(
              'Comparación de frameworks móviles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 12),

            // Tabla comparativa
            Table(
              border: TableBorder.all(color: Colors.indigo.shade100),
              columnWidths: const {
                0: FixedColumnWidth(120),
              },
              children: [
                // Encabezado
                TableRow(
                  decoration: BoxDecoration(color: Colors.indigo.shade50),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Característica', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    for (var fw in frameworksList)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(fw.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                  ],
                ),
                // Lenguaje
                TableRow(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Lenguaje'),
                    ),
                    for (var fw in frameworksList)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(fw.language),
                      ),
                  ],
                ),
                // Ventajas (solo resumen)
                TableRow(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Ventajas'),
                    ),
                    for (var fw in frameworksList)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(fw.advantages.join(', '), maxLines: 3, overflow: TextOverflow.ellipsis),
                      ),
                  ],
                ),
                // Desventajas
                TableRow(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Desventajas'),
                    ),
                    for (var fw in frameworksList)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(fw.disadvantages.join(', '), maxLines: 3, overflow: TextOverflow.ellipsis),
                      ),
                  ],
                ),
                // Ejemplos
                TableRow(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Ejemplos'),
                    ),
                    for (var fw in frameworksList)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(fw.examples.join(', '), maxLines: 2, overflow: TextOverflow.ellipsis),
                      ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Volver'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
