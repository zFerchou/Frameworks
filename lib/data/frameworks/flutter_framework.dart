import '../../models/framework_model.dart';

final flutterFramework = FrameworkModel(
  id: 'flutter',
  name: 'Flutter',
  shortDescription: 'UI toolkit creado por Google para construir aplicaciones '
      'nativas multiplataforma desde una sola base de código.',
  language: 'Dart',

  advantages: [
    'Excelente rendimiento gracias a la compilación nativa (ARM, x86).',
    'UI consistente con un sistema robusto de widgets personalizables.',
    'Hot Reload que acelera el ciclo de desarrollo.',
    'Amplia comunidad y ecosistema de paquetes.',
    'Soporte oficial de Google y actualizaciones frecuentes.',
    'Compatible con Android, iOS, Web, Windows, macOS y Linux.',
  ],

  disadvantages: [
    'Tamaño de las aplicaciones iniciales relativamente grande.',
    'Paquetes de terceros pueden variar en calidad y soporte.',
    'Curva de aprendizaje para quienes no conocen Dart.',
    'Integración con APIs nativas a veces requiere código adicional.',
  ],

  examples: [
    'Google Ads',
    'eBay Motors',
    'Reflectly (app de journaling)',
    'Hamilton Musical App',
    'Startups que buscan prototipado rápido',
  ],

  imageAsset: 'assets/images/flutter.png',

  carousel: [
    CarouselItem(
      title: '¿Qué es Flutter?',
      content: 'Es un kit de herramientas de UI desarrollado por Google que '
          'permite crear aplicaciones nativas para múltiples plataformas '
          'con un solo código fuente.',
    ),
    CarouselItem(
      title: 'Ventajas Clave',
      content: 'Hot Reload, compilación nativa, widgets personalizables y '
          'gran comunidad.',
    ),
    CarouselItem(
      title: 'Desventajas',
      content: 'Tamaño de apps inicial, calidad desigual en algunos paquetes, '
          'curva de aprendizaje de Dart.',
    ),
    CarouselItem(
      title: 'Casos de Uso',
      content: 'Startups, apps de productividad, aplicaciones multiplataforma '
          'empresariales, prototipos rápidos.',
    ),
    CarouselItem(
      title: 'Ejemplos Famosos',
      content: 'Google Ads, Reflectly, eBay Motors, Hamilton Musical App.',
    ),
  ],

  // Información adicional fuera del carrusel
  moreInfo: '''
Flutter se lanzó en diciembre de 2018 y rápidamente se ha convertido 
en uno de los frameworks más populares para desarrollo multiplataforma. 
Su arquitectura se basa en un motor propio de renderizado (Skia), lo que 
permite un control completo sobre cada pixel en pantalla y asegura que las 
apps se vean consistentes en todas las plataformas. Flutter tiene un ecosistema 
muy activo de paquetes y plugins que permiten integrar APIs nativas, 
servicios en la nube y componentes de UI avanzados. La comunidad de Flutter 
organiza eventos, meetups y contribuye con tutoriales, librerías y soporte 
técnico constante. Grandes empresas y startups lo utilizan para prototipos 
rápidos, aplicaciones de consumo y soluciones empresariales multiplataforma.
''',
);
