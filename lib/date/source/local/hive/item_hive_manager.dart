import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'basket_hive.dart';
import 'item_hive.dart';

class ItemHiveManager {
  static const String _basketPath = 'basket';
  static  const String _boxName = 'itemBox';
  static late final Box<ItemHive> boxFavorite;
  static late final Box<BasketHive> basket;


  static Future<void> init () async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(ItemHiveAdapter());
    Hive.registerAdapter(BasketHiveAdapter());
    boxFavorite = await Hive.openBox<ItemHive>(_boxName);
    basket = await Hive.openBox<BasketHive>(_basketPath);
  }

  static  addItem(ItemHive item)  {
     boxFavorite.put(item.id, item);
  }

  static deleteItemById(String id)  async {
     boxFavorite.delete(id);
  }

  static bool isItemLike(String id)  {
     return boxFavorite.containsKey(id);
  }
  static List<ItemHive> getLikes(){
    return boxFavorite.values.toList();
  }

  static  deleteBasketData(String productId) {
    basket.delete(productId);

  }

  static bool isFavorite(String productId) {
    return basket.containsKey(productId);
  }

  static  addBasket(BasketHive product){
    basket.put(product.productId,product);
  }
  static List<BasketHive> getBaskets (){
    return basket.values.toList();
  }
}
