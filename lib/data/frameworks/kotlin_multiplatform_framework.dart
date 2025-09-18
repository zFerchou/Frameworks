import '../../models/framework_model.dart';

final kotlinMultiplatformFramework = FrameworkModel(
  id: 'kotlin_multiplatform',
  name: 'Kotlin Multiplatform',
  shortDescription: 'Compartir lógica de negocio entre plataformas con Kotlin.',
  language: 'Kotlin',
  advantages: ['Código compartido de negocio', 'Interoperabilidad nativa'],
  disadvantages: ['Ecosistema más joven', 'Curva de configuración'],
  examples: ['Apps que requieren lógica compartida'],
  imageAsset: 'assets/images/kotlin_mp_logo.png',
);
