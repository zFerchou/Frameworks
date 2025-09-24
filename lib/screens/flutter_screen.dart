import 'package:flutter/material.dart';
import '../models/framework_model.dart';
import '../widgets/framework_card.dart';
import '../data/frameworks_data.dart';

class FlutterScreen extends StatefulWidget {
  const FlutterScreen({super.key});

  @override
  State<FlutterScreen> createState() => _FlutterScreenState();
}

class _FlutterScreenState extends State<FlutterScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.85);

  final List<Map<String, String>> flutterSlides = [
    {
      "title": "¿Qué es Flutter?",
      "desc":
          "Flutter es un framework de Google para crear aplicaciones móviles, web y de escritorio con una sola base de código."
    },
    {
      "title": "Ventajas",
      "desc":
          "Rendimiento nativo, desarrollo rápido con Hot Reload, gran comunidad y widgets personalizables."
    },
    {
      "title": "Lenguaje",
      "desc": "Flutter utiliza Dart, un lenguaje moderno, rápido y optimizado para interfaces gráficas."
    },
  ];

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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // 🔹 Slider de información
              SizedBox(
                height: 180,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: flutterSlides.length,
                  itemBuilder: (context, index) {
                    final slide = flutterSlides[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6,
                        color: Colors.white.withOpacity(0.9),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                slide["title"]!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                slide["desc"]!,
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
              const SizedBox(height: 20),

              // 🔹 Tarjeta principal con información del framework
              AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOut,
                margin: const EdgeInsets.only(top: 12),
                child: FlutterFrameworkCard(framework: flutterFramework),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
