import 'package:hive/hive.dart';

part 'item_hive.g.dart';
@HiveType(typeId: 0)
class ItemHive extends HiveObject {

  @HiveField(0)
  String id ;

  @HiveField(1)
  String name ;

  @HiveField(2)
  String price ;

  @HiveField(3)
  String img ;

  ItemHive({required this.id ,required this.name,  required this.price,required this.img});
}