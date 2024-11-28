import 'package:flutter/material.dart';
import 'package:texnomart/common/di/di.dart';
import 'package:texnomart/data/source/local/hive/item_hive_manager.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AndroidYandexMap.useAndroidViewSurface = false;
  await ItemHiveManager.init();
  // Hive.initFlutter;
  // Hive.registerAdapter(ItemHiveAdapter());

  setup();
  runApp(const MyApp());
}
