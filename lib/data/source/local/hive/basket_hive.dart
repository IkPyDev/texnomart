import 'package:hive/hive.dart';

part 'basket_hive.g.dart';

@HiveType(typeId: 1)
class BasketHive extends HiveObject {
  @HiveField(0)
  final String productId;
  @HiveField(1)
  final String name;
  @HiveField(2)
  double price;
  @HiveField(3)
  String image;
  @HiveField(4)
  int count;
  @HiveField(5)
  bool isChecked;
  @HiveField(6)
  bool isFavourite;

  BasketHive({
    required this.productId,
    required this.name,
    required this.price,
    required this.image,
    required this.count,
    required this.isChecked,
    required this.isFavourite,
  });

  @override
  String toString() {
    return 'BasketModel{productId: $productId, name: $name, price: $price, image: $image, count: $count, isChecked: $isChecked, isFavourite: $isFavourite}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BasketHive &&
        other.productId == productId &&
        other.name == name &&
        other.price == price &&
        other.image == image &&
        other.count == count &&
        other.isChecked == isChecked &&
        other.isFavourite == isFavourite;
  }

  @override
  int get hashCode {
    return productId.hashCode ^ name.hashCode ^ price.hashCode ^ image.hashCode ^ count.hashCode ^ isChecked.hashCode ^ isFavourite.hashCode;
  }

}
