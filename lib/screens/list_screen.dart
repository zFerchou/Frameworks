import 'package:flutter/material.dart';
import '../data/frameworks_data.dart';
import 'detail_screen.dart';
import 'compare_screen.dart';
import '../widgets/framework_card.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.85);

  final List<Map<String, String>> infoSlides = [
    {
      "title": "¿Por qué comparar?",
      "desc":
          "Cada framework tiene ventajas únicas. Compararlos te ayuda a elegir el más adecuado para tu proyecto."
    },
    {
      "title": "Criterios importantes",
      "desc":
          "Rendimiento, facilidad de uso, comunidad y soporte multiplataforma son factores clave en la elección."
    },
    {
      "title": "Explora y aprende",
      "desc":
          "Descubre cómo se diferencian Flutter, React Native y otros frameworks en esta sección."
    },
  ];

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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 8),

            // 🔹 Slider informativo
            SizedBox(
              height: 160,
              child: PageView.builder(
                controller: _pageController,
                itemCount: infoSlides.length,
                itemBuilder: (context, index) {
                  final slide = infoSlides[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Card(
                      color: Colors.white.withOpacity(0.9),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              slide["title"]!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              slide["desc"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // 🔹 Encabezado informativo
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Selecciona un framework para ver sus detalles',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            // 🔹 Lista de frameworks con animación
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                  itemCount: frameworksList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    final fw = frameworksList[index];
                    return TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(milliseconds: 400 + (index * 100)),
                      builder: (context, value, child) => Transform.scale(
                        scale: value,
                        child: child,
                      ),
                      child: FlutterFrameworkCard(
                        framework: fw,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailScreen(framework: fw),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),

            // 🔹 Botón de comparativa
            Container(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 55,
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
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
