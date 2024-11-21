// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:texnomart/common/gen/assets.gen.dart';
// import 'package:texnomart/common/utils/print.dart';
// import 'package:texnomart/presentation/bloc/category/category_bloc.dart';
//
// class EmptyLottie extends StatelessWidget {
//   const EmptyLottie({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CategoryBloc, CategoryState>(
//       builder: (context, state) {
//
//         pPrint("Current Page: ${state.currentPage}"); // Debug pPrint
//         pPrint("Total Page: ${state.totalPage}"); // Debug pPrint
//         pPrint("Is Lottie Visible: ${state.isLottieVisible}"); // Debug pPrint
//         pPrint("Has Showed Lottie: ${state.hasShowedLottie}"); // Debug print
//         pPrint("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa");
//         if (state.isLottieVisible == true) {
//
//
//           return AnimatedOpacity(
//             opacity: state.isLottieVisible ? 1.0 : 0.0,
//             duration: const Duration(milliseconds: 300),
//             child: Center(
//               child: Assets.lottie.emptyProducts.lottie(
//                 height: 200,
//                 width: 200,
//               ),
//             ),
//           );
//         }else{
//           pPrint("Current Page: ${state.currentPage}"); // Debug pPrint
//           pPrint("Total Page: ${state.totalPage}"); // Debug pPrint
//           pPrint("Is Lottie Visible: ${state.isLottieVisible}"); // Debug pPrint
//           pPrint("Has Showed Lottie: ${state.hasShowedLottie}"); // Debug print
//           return Container(
//             height: 100,
//           );
//         }
//       },
//     );
//   }
// }