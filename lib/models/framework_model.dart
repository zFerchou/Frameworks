class FrameworkModel {
  final String id;
  final String name;
  final String shortDescription;
  final String language;
  final List<String> advantages;
  final List<String> disadvantages;
  final List<String> examples;
  final String imageAsset;

  final String moreInfo; // Información adicional (ahora requerido)
  final List<CarouselItem> carousel; // Carrusel (ahora requerido)

  FrameworkModel({
    required this.id,
    required this.name,
    required this.shortDescription,
    required this.language,
    required this.advantages,
    required this.disadvantages,
    required this.examples,
    required this.imageAsset,
    required this.carousel,
    required this.moreInfo,
  });
}

class CarouselItem {
  final String title;
  final String content;

  CarouselItem({
    required this.title,
    required this.content,
  });
}
