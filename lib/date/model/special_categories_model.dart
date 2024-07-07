class SpecialCategoriesModel {
  final bool success;
  final String message;
  final int code;
  final List<SpecialCategoriesModelData> data;

  SpecialCategoriesModel({
    required this.success,
    required this.message,
    required this.code,
    required this.data,
  });

  @override
  String toString() {
    return 'SpecialCategoriesModel(success: $success, message: $message, code: $code, data: $data)';
  }
}

class SpecialCategoriesModelData {
  final String title;
  final String image;
  final String slug;

  SpecialCategoriesModelData({
    required this.title,
    required this.image,
    required this.slug,
  });

  @override
  String toString() {
    return 'SpecialCategoriesModelData(title: $title, image: $image, slug: $slug)';
  }
}
