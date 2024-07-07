class SliderModel {
  final bool success;
  final String message;
  final int code;
  final List<SliderDataModel> data;

  SliderModel({
    required this.success,
    required this.message,
    required this.code,
    required this.data,
  });

  @override
  String toString() {
    return 'SliderModel(success: $success, message: $message, code: $code, data: $data)';
  }
}

class SliderDataModel {
  final int id;
  final String link;
  final String title;
  final String imageWeb;
  final String imageMobileWeb;

  SliderDataModel({
    required this.id,
    required this.link,
    required this.title,
    required this.imageWeb,
    required this.imageMobileWeb,
  });

  @override
  String toString() {
    return 'SliderDataModel(id: $id, link: $link, title: $title, imageWeb: $imageWeb, imageMobileWeb: $imageMobileWeb)';
  }
}
