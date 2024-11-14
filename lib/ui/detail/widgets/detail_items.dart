// import 'package:flutter/material.dart';
// import 'package:texnomart/ui/category_menu/category_menu.dart';
//
// class DetailItems extends StatefulWidget {
//    const DetailItems({super.key});
//
//   @override
//   State<DetailItems> createState() => _DetailItemsState();
// }
//
// class _DetailItemsState extends State<DetailItems> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xffffba08),
//         actions: [isLike ? isLikedItem( data.id.toString(),data.name.toString(),data.salePrice.toString(),data.largeImages?[0].toString() ?? "") : isDisLikedItem()],
//         leading: GestureDetector(
//             onTap: () {
//               Navigator.of(context).pop();
//             },
//             child: Icon(
//               Icons.arrow_back,
//               size: 25,
//               color: Colors.black,
//             )),
//       ),
//       body: getData(data),
//     );;
//   }
// }
//
// Widget getScafold(GetDetail data){
//   isLike = !ItemHiveManager.isItemLike();
//   isTap = false;
//
//
// }