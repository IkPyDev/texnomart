import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/data/source/local/hive/basket_hive.dart';
import 'package:texnomart/presentation/bloc/main/main_bloc.dart';
import 'package:texnomart/utils/to_value.dart';
import 'package:texnomart/utils/widget.dart';

import '../../constats/const.dart';
import '../../data/source/local/hive/item_hive.dart';
import '../../data/source/local/hive/item_hive_manager.dart';
import '../../data/source/remote/response/detail_responce/detail_responce.dart';
import '../../presentation/bloc/basket/basket_bloc.dart';
import '../../presentation/bloc/detail/detail_bloc.dart';
import '../../utils/status.dart';
import 'detail_sliders.dart';

class DetailScreens extends StatefulWidget {

 final String args;
  const DetailScreens({required this.args,super.key,});


  @override
  State<DetailScreens> createState() => _DetailScreensState();
}

class _DetailScreensState extends State<DetailScreens> {
  bool isTap =false;

  late bool isLike = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {


        return switch (state.status) {
          Status.loading => Scaffold(appBar: AppBar(backgroundColor: Theme.of(context).primaryColor,),body: getLoading()),
          Status.success => getScafold(state.detail!),
          Status.fail => Center(
            child: Text(state.errorMessage.toString()),
          ),
          Status.initial => Center(),
          null => Center(),
        };



      },
    );
  }

  Widget getScafold(GetDetail data){
    isLike = !ItemHiveManager.isItemLike(widget.args.toString());
    isTap = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffba08),
        actions: [isLike ? isLikedItem( data.id.toString(),data.name.toString(),data.salePrice.toString(),data.largeImages?[0].toString() ?? "") : isDisLikedItem()],
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.black,
            )),
      ),
      body: getData(data),
    );
  }

  Widget getData(GetDetail data) {
    // print("detail get");
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          DetailSliders(slidersResponse: data.largeImages!),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Mavjud',
                  style: TextStyle(color: Colors.green),
                ),
                Spacer(),
                Text(
                  'Art. ${data.id}',
                  style: TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                data.name ?? "no Data",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black38),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(4.0, 4.0),
                    color: Colors.grey.shade500,
                    blurRadius: 10,
                    spreadRadius: 1),
                const BoxShadow(
                    offset: Offset(4.0, 4.0),
                    color: Colors.white,
                    blurRadius: 10,
                    spreadRadius: 1),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    child: Text(
                      data.salePrice.toString() ?? "1 859 000 so'm",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      BlocBuilder<DetailBloc, DetailState>(
                        builder: (context, state) {
                          var basketItem = BasketHive(
                              productId: data.id.toString(),
                              name: data.name.toString(),
                              price: data.loanPrice?.toDouble() ?? 0.0,
                              image: data.largeImages?[0].toString() ?? " ",
                              count: data.reviewsCount ?? 0,
                              isChecked: false,
                              isFavourite: isLike);

                          return switch (state.isFavorite) {
                            null => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            StatusDetail.add => isFavoriteItem(basketItem),
                            StatusDetail.delete => isDiDisFavoriteItem(
                                state.detail?.id?.toString() ?? ""),
                            StatusDetail.loading => Center(
                              child: CircularProgressIndicator(),
                            ),
                          };
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black38),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(4.0, 4.0),
                    color: Colors.grey.shade500,
                    blurRadius: 10,
                    spreadRadius: 1),
                const BoxShadow(
                    offset: Offset(4.0, 4.0),
                    color: Colors.white,
                    blurRadius: 10,
                    spreadRadius: 1),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    child: Row(
                      children: [
                        Text(
                          "To'lov variantlari",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Spacer(),
                        Icon(Icons.info_outline)
                      ],
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(color: Colors.amber)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/anorbank.png',
                                height: 30,
                                width: 100,
                              ),
                              Spacer(),
                              Text(
                                "oyiga ${(data.loanPrice! * 1.33 / 12).toStringAsFixed(2).toValue()} so'm",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            color: Colors.black12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jami",
                                      style: TextStyle(
                                          color: Colors.black38, fontSize: 14),
                                    ),
                                    Text(
                                      "${(data.loanPrice! * 1.33 ).toStringAsFixed(2).toValue()}som",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.black54),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Center(
                                        child: Text(
                                          "Rasmiylashtirish",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget isLikedItem(String id,String name,String price,String img) {

    return InkWell(

        onTap: () {
          if(!isTap){

          }
          print("like bosildi ");
          var item = ItemHive(id: id, name:name, price:price, img: img);
          ItemHiveManager.addItem(item);
          setState(() {
            isLike = !isLike;
          });
        },
        child: SvgPicture.asset(
          Const.deactive_like,
          width: 30,
          height: 30,
        ));
  }

  Widget isDisLikedItem() {

    return InkWell(
        onTap: () {
          if(!isTap){

          }
          ItemHiveManager.deleteItemById(widget.args);
          print("dislike bosildi ");
          setState(() {
            isLike = !isLike;
          });
        },
        child: SvgPicture.asset(
          Const.active_like,
          width: 30,
          height: 30,
        ));
  }

  Widget isFavoriteItem(BasketHive basket) {
    return InkWell(
        onTap: () {
          context
              .read<DetailBloc>()
              .add(DetailAddFavoriteEvent(basket: basket));
          print("Event Detailda bosildi  ");
          context.read<MainBloc>().add(LoadAllBasketData());
          context.read<BasketBloc>().add(LoadBasketData());

          // print("isFavorite bosildi ");
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.yellow),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Colors.black,
                ),
                Text("Savatga qoshish "),
              ],
            )));
  }

  Widget isDiDisFavoriteItem(String id) {
    return InkWell(
        onTap: () {
          context.read<DetailBloc>().add(DetailDeleteId(id: id));
          // print("deIsFavorite bosildi ");
          print("Event Detailda bosildi  ");
          context.read<MainBloc>().add(LoadAllBasketData());
          context.read<BasketBloc>().add(LoadBasketData());



        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.amber, width: 2),
                color: Colors.white),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.remove_shopping_cart_outlined,
                  color: Colors.black,
                ),
                Text("Savatdan olib tashlash"),
              ],
            )));
  }
}
