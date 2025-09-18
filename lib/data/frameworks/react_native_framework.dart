import '../../models/framework_model.dart';

final reactNativeFramework = FrameworkModel(
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
);
