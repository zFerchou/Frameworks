import '../models/framework_model.dart';

final List<FrameworkModel> frameworksList = [
  FrameworkModel(
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
    imageAsset: 'assets/images/flutter_logo.png',
  ),
  FrameworkModel(
    id: 'react_native',
    name: 'React Native',
    shortDescription: 'Framework de Facebook para apps móviles usando JS/React.',
    language: 'JavaScript / TypeScript',
    advantages: [
      'Reutilización de código web',
      'Amplia cantidad de librerías',
    ],
    disadvantages: [
      'Bridging con código nativo puede ser necesario',
      'Rendimiento no siempre nativo puro',
    ],
    examples: ['Instagram (parte)', 'Facebook (componentes)'],
    imageAsset: 'assets/images/react_native_logo.png',
  ),
  FrameworkModel(
    id: 'ionic',
    name: 'Ionic',
    shortDescription: 'Framework híbrido basado en web technologies (HTML/CSS/JS).',
    language: 'HTML/CSS/JS / Angular / React / Vue',
    advantages: ['Desarrollo web-first', 'Rápido prototipado'],
    disadvantages: ['Rendimiento inferior en UI pesada'],
    examples: ['Apps internas, PWA'],
    imageAsset: 'assets/images/ionic_logo.png',
  ),
  FrameworkModel(
    id: 'kotlin_multiplatform',
    name: 'Kotlin Multiplatform',
    shortDescription: 'Compartir lógica de negocio entre plataformas con Kotlin.',
    language: 'Kotlin',
    advantages: ['Código compartido de negocio', 'Interoperabilidad nativa'],
    disadvantages: ['Ecosistema más joven', 'Curva de configuración'],
    examples: ['Apps que requieren lógica compartida'],
    imageAsset: 'assets/images/kotlin_mp_logo.png',
  ),
];
