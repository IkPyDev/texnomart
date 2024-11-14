import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

Widget getLoading(){
  return Container(
      alignment: Alignment.center,
      child: Lottie.asset("assets/lottie/loading.json",
          width: 34, height: 34));
}