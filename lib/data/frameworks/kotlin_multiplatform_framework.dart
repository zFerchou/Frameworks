import '../../models/framework_model.dart';

final FrameworkModel kotlinMultiplatformFramework = FrameworkModel(
  id: 'kotlin_multiplatform',
  name: 'Kotlin Multiplatform',
  shortDescription: 'Framework de JetBrains para compartir lógica de negocio en múltiples plataformas usando Kotlin.',
  language: 'Kotlin',
  
  advantages: [
    'Permite compartir código de negocio en Android, iOS, Web y Desktop.',
    'Interoperabilidad total con código nativo.',
    'Soporte oficial de JetBrains y gran integración con Android Studio.',
  ],
  
  disadvantages: [
    'Ecosistema joven, en evolución constante.',
    'Curva de configuración inicial algo compleja.',
    'Menos librerías listas comparado con Flutter o React Native.',
  ],
  
  examples: [
    'CashApp (Square)',
    'Touchlab proyectos de consultoría',
    'Startups que priorizan código compartido',
  ],
  
  imageAsset: 'assets/images/kotlin.png',
  
  carousel: [
    CarouselItem(
      title: '¿Qué es Kotlin Multiplatform?',
      content: 'Una tecnología de JetBrains que permite compartir lógica de negocio en múltiples plataformas usando Kotlin.',
    ),
    CarouselItem(
      title: 'Ventajas',
      content: 'Código compartido de negocio, interoperabilidad con nativo, soporte oficial de JetBrains.',
    ),
    CarouselItem(
      title: 'Desventajas',
      content: 'Ecosistema más joven y curva de configuración inicial.',
    ),
    CarouselItem(
      title: 'Casos de Uso',
      content: 'Aplicaciones que requieren lógica compartida entre Android, iOS y Web.',
    ),
  ],
  
  moreInfo: '''
Kotlin Multiplatform (KMP) no busca reemplazar las interfaces nativas, 
sino facilitar la reutilización de la lógica de negocio (red, persistencia, algoritmos). 
Esto permite a los equipos mantener interfaces nativas en iOS y Android, pero compartir 
gran parte del código base. JetBrains impulsa activamente su desarrollo, y cada vez 
más empresas lo adoptan para reducir costos y tiempos de mantenimiento en entornos multiplataforma.
''',
);
