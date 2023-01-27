enum ImageMode { portrait, landscape }

enum EventAction { cardTap, backTap, tabBarTap, tabChanged }

class PresentationData {
  String title;
  String imgSrc;
  String? detailText;
  String? youtubeLink;
  String? imageMode;
  List<PresentationData>? subCategories;

  PresentationData(
      {required this.title,
      required this.imgSrc,
      this.detailText,
      this.youtubeLink,
      this.imageMode,
      this.subCategories});

  static PresentationData fromJson(Map<String, dynamic> json) {
    List<PresentationData>? subCategory;
    if (json['subCategories'] != null) {
      subCategory = [];
      json['subCategories']
          ?.forEach((v) => subCategory!.add(PresentationData.fromJson(v)));
    }

    return PresentationData(
      title: json['title'],
      imgSrc: json['imgSrc'],
      youtubeLink: json['youtubeLink'],
      detailText: json['detailText'],
      imageMode: (json['imageMode'] ?? ImageMode.landscape.name).toLowerCase(),
      subCategories: subCategory,
    );
  }

  static List<PresentationData> fromJsonList(final List<dynamic> list) =>
      list.map<PresentationData>((e) => PresentationData.fromJson(e)).toList();

  static Map<String, dynamic> toJson(final PresentationData model) {
    final Map<String, dynamic> data = {};
    data['title'] = model.title;
    data['imgSrc'] = model.imgSrc;
    data['youtubeLink'] = model.youtubeLink;
    data['imageMode'] = model.imageMode?.toLowerCase();
    data['detailText'] = model.detailText;
    if (model.subCategories != null) {
      final subCategoriesData = [];
      for (final element in model.subCategories!) {
        subCategoriesData.add(PresentationData.toJson(element));
      }
      data['subCategories'] = subCategoriesData;
    }
    return data;
  }

  static List<Map<String, dynamic>> toJsonList(
          final List<PresentationData> list) =>
      list
          .map<Map<String, dynamic>>((e) => PresentationData.toJson(e))
          .toList();
}
