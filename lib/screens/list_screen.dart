import 'package:flutter/material.dart';
import '../data/frameworks_data.dart';
import '../widgets/framework_card.dart';
import 'detail_screen.dart';
import 'compare_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Frameworks')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: frameworksList.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final fw = frameworksList[index];
                  return FrameworkCard(
                    framework: fw,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(framework: fw)));
                    },
                  );
                },
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CompareScreen())),
              icon: const Icon(Icons.table_chart),
              label: const Text('Comparativa rápida'),
            )
          ],
        ),
      ),
    );
  }
}
