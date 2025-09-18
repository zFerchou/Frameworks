import 'package:flutter/material.dart';
import 'list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset('assets/images/app_logo.png', width: 160, height: 160),
            const SizedBox(height: 20),
            Text('Frameworks Móvil', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text('Comparativa y guías rápidas', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ListScreen())),
              icon: const Icon(Icons.list),
              label: const Text('Ver frameworks'),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ListScreen())), icon: const Icon(Icons.compare), label: const Text('Comparar')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
