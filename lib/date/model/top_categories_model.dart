class TopCategoriesModel {
  final bool success;
  final String message;
  final int code;
  final List<TopCategoryData> data;

  TopCategoriesModel({
    required this.success,
    required this.message,
    required this.code,
    required this.data,
  });

  @override
  String toString() {
    return 'TopCategoriesModel(success: $success, message: $message, code: $code, data: $data,';
  }
}

class TopCategoryData {
  final String title;
  final String slug;

  TopCategoryData({
    required this.title,
    required this.slug,
  });

  @override
  String toString() {
    return 'TopCategoryData(title: $title, slug: $slug)';
  }
}
