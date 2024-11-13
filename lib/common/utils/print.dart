import 'package:flutter/foundation.dart';

void pPrint(Object? object,{ String? title, int level = 1}) {

  if (kDebugMode) {
    String color;
    switch (level) {
      case 1:
        color = '\x1B[32m'; // green
        break;
      case 2:
        color = '\x1B[33m'; // yellow
        break;
      case 3:
        color = '\x1B[31m'; // red
        break;
      default:
        color = '\x1B[37m'; // white
    }

    title ??= 'Debug';
    print(
      '''$color
************$title*********
${object.toString()}
************$title*********\x1B[0m''',

    );
  }
}
