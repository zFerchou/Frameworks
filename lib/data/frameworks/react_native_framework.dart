import '../../models/framework_model.dart';

final FrameworkModel reactNativeFramework = FrameworkModel(
  id: 'react_native',
  name: 'React Native',
  shortDescription: 'Framework de Facebook para crear aplicaciones móviles usando JavaScript y React.',
  language: 'JavaScript / TypeScript',

  advantages: [
    'Reutilización de código web en apps móviles.',
    'Amplia cantidad de librerías y comunidad activa.',
    'Hot Reload para desarrollo rápido.',
    'Soporte multiplataforma (iOS y Android).',
  ],

  disadvantages: [
    'A veces se requiere bridging con código nativo.',
    'Rendimiento no siempre es igual al nativo puro.',
    'Depende de la calidad de librerías de terceros.',
  ],

  examples: [
    'Instagram (parte de la app)',
    'Facebook (componentes específicos)',
    'Walmart',
    'UberEats',
  ],

  imageAsset: 'assets/images/react.png',

  carousel: [
    CarouselItem(
      title: '¿Qué es React Native?',
      content: 'Framework de Facebook que permite crear apps móviles usando JavaScript y React con una sola base de código.',
    ),
    CarouselItem(
      title: 'Ventajas',
      content: 'Reutilización de código, gran comunidad, Hot Reload y soporte multiplataforma.',
    ),
    CarouselItem(
      title: 'Desventajas',
      content: 'Rendimiento menor que nativo puro en ciertas situaciones y necesidad de bridging.',
    ),
    CarouselItem(
      title: 'Casos de Uso',
      content: 'Apps con lógica compartida y componentes nativos, prototipos rápidos, startups.',
    ),
  ],

  moreInfo: '''
React Native se lanzó en 2015 y permite a los desarrolladores construir aplicaciones móviles 
usando JavaScript y React, compartiendo gran parte del código entre iOS y Android. 
Aunque su rendimiento es cercano al nativo, en casos de UI muy compleja puede ser necesario 
usar código nativo adicional. La comunidad es enorme y hay una gran cantidad de librerías y 
plugins disponibles, lo que facilita la creación rápida de aplicaciones multiplataforma.
''',
);
