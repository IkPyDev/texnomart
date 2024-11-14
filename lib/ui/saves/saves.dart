import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../presentation/bloc/basket/basket_bloc.dart';
import 'basket_item.dart';

class Saves extends StatefulWidget {
  const Saves({super.key});

  @override
  State<Saves> createState() => _SavesState();
}

class _SavesState extends State<Saves> {
  @override
  Widget build(BuildContext context) {
    context.read<BasketBloc>().add(LoadBasketData());
    return BlocConsumer<BasketBloc, BasketState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xfffdc202),
            title: const Text("Savatcha", style: TextStyle(fontSize: 20, color: Colors.black)),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Row(
                      children: [
                        const Text("Tanlanganlarni o'chirish", style: TextStyle(fontSize: 14, color: Colors.black45)),
                        const Spacer(),
                        const Text("Hammasini tanlash", style: TextStyle(fontSize: 14, color: Colors.black54)),
                        GestureDetector(
                          onTap: () {
                            context.read<BasketBloc>().add(ChangeAllChecks());
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xfffdc202)),
                              child: const Icon(
                                Icons.check,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 0.6, color: Colors.black12),
                  if (state.basketList != null && state.basketList!.isNotEmpty)
                    for (int i = 0; i < state.basketList!.length; ++i)
                      BasketItem(
                        basketData: state.basketList![i],
                        index: i,
                      )
                  else ...[
                    const SizedBox(height: 24),
                    Center(
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/svgs/empty_basket_icon.svg', height: 56, width: 56),
                          const SizedBox(height: 12),
                          Text(
                            "Savatada hali hech narsa yo'q",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: const EdgeInsets.all(16),
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                "Xarid qilishga o'ting",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ],
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 1,
                        color: Colors.black12,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Jami", style: TextStyle(fontSize: 18, color: Colors.black)),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Row(
                              children: [
                                Text("${state.allCount} ta mahsulot", style: const TextStyle(fontSize: 14, color: Colors.black54)),
                                const Spacer(),
                                Text("${state.allPrice.toString()} so'm", style: const TextStyle(fontSize: 14, color: Colors.black)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text("To'lash uchun", style: TextStyle(fontSize: 18, color: Colors.black)),
                              const Spacer(),
                              Text("${state.allPrice.toString()} so'm", style: const TextStyle(fontSize: 18, color: Colors.black)),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            width: double.infinity,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: state.allPrice == 0 ? const Color(0xfff3db9e) : const Color(0xfffdc202),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(width: 8),
                                Text(
                                  "Haridni rasmiylashtirish",
                                  style: TextStyle(color: state.allPrice != 0 ? Colors.black : Colors.grey, fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  if (state.allPrice != 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1,
                              color: Colors.black12,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xfff2f2f2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text("Muddatli to'lov ", style: TextStyle(fontSize: 12, color: Colors.black54)),
                                        Text(
                                          "${((state.allPrice * 1.36) ~/ 24).toString()



                                          } so'm dan",
                                          style: const TextStyle(fontSize: 14, color: Colors.black),
                                        ),
                                        const Text(" / 24 oy ", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Container(
                                width: double.infinity,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Muddatli to'lovni rasmiylashtirish",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

