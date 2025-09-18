class FrameworkModel {
  final String id;
  final String name;
  final String shortDescription;
  final String language;
  final List<String> advantages;
  final List<String> disadvantages;
  final List<String> examples;
  final String imageAsset; // path inside assets/images/

  FrameworkModel({
    required this.id,
    required this.name,
    required this.shortDescription,
    required this.language,
    required this.advantages,
    required this.disadvantages,
    required this.examples,
    required this.imageAsset,
  });
}
