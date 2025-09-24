import '../../models/framework_model.dart';

final FrameworkModel ionicFramework = FrameworkModel(
  id: 'ionic',
  name: 'Ionic',
  shortDescription: 'Framework híbrido basado en tecnologías web (HTML, CSS, JS) con soporte para Angular, React y Vue.',
  language: 'HTML / CSS / JS / Angular / React / Vue',
  
  advantages: [
    'Enfoque web-first con soporte multiplataforma.',
    'Gran ecosistema de componentes UI listos para usar.',
    'Compatible con Progressive Web Apps (PWA).',
    'Rápido prototipado gracias a su simplicidad.',
  ],
  
  disadvantages: [
    'Rendimiento menor en interfaces muy gráficas.',
    'Dependencia de WebView en móviles.',
    'Menor acceso directo a APIs nativas comparado con frameworks nativos.',
  ],
  
  examples: [
    'MarketWatch',
    'Diesel App',
    'Pacifica',
    'Sworkit',
  ],
  
  imageAsset: 'assets/images/ionic1.png',
  
  carousel: [
    CarouselItem(
      title: '¿Qué es Ionic?',
      content: 'Un framework híbrido que utiliza tecnologías web para crear aplicaciones móviles y web multiplataforma.',
    ),
    CarouselItem(
      title: 'Ventajas',
      content: 'Gran biblioteca de componentes, soporte para Angular/React/Vue y rápido prototipado.',
    ),
    CarouselItem(
      title: 'Desventajas',
      content: 'Rendimiento inferior en apps muy exigentes y dependencia de WebView.',
    ),
    CarouselItem(
      title: 'Casos de Uso',
      content: 'Aplicaciones empresariales, PWA y apps internas.',
    ),
  ],
  
  moreInfo: '''
Ionic fue lanzado en 2013 y se ha consolidado como una de las principales opciones 
para desarrollo híbrido. Permite construir aplicaciones móviles y web desde un 
único código base usando estándares web. Gracias a Capacitor (su runtime moderno), 
es posible acceder a funcionalidades nativas como cámara, geolocalización y sensores 
con mayor facilidad. 
Ideal para empresas que buscan lanzar apps rápidamente en múltiples plataformas 
sin necesidad de desarrolladores especializados en nativo.
''',
);
