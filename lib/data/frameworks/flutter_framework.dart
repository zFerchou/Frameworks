import '../../models/framework_model.dart';

final flutterFramework = FrameworkModel(
  id: 'flutter',
  name: 'Flutter',
  shortDescription: 'UI toolkit by Google para apps nativas multiplataforma.',
  language: 'Dart',
  advantages: [
    'Excelente rendimiento (compilación nativa)',
    'UI consistente con widgets',
    'Gran comunidad y documentación',
  ],
  disadvantages: [
    'Paquetes nativos aún pueden variar',
    'APK/AAB más grandes',
  ],
  examples: ['Google Ads (demo)', 'Apps prototipo', 'Startups multiplataforma'],
  imageAsset: 'assets/images/flutter.png',
);
