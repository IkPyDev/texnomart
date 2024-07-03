import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/date/source/local/hive/basket_hive.dart';

import '../../presentation/bloc/basket/basket_bloc.dart';

class BasketItem extends StatefulWidget {
  final BasketHive basketData;
  final int index;

  const BasketItem({super.key, required this.basketData, required this.index});

  @override
  State<BasketItem> createState() => _BasketItemState();
}

class _BasketItemState extends State<BasketItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Image.network(
                widget.basketData.image,
                height: 70,
                width: 100,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.basketData.name,
                          maxLines: 2,
                          style: const TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          context.read<BasketBloc>().add(OnClickCheckBox(index: widget.index));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: widget.basketData.isChecked
                              ? Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: const Color(0xfffdc202),
                                  ),
                                  child: const Icon(
                                    Icons.check,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                )
                              : Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "${widget.basketData.price.toString()} so'm",
                    style: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.all(2),
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "${(widget.basketData.price / 24).toString()} so'mdan / 24 oy",
                      style: const TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(width: 1, color: Colors.black12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context.read<BasketBloc>().add(Decrement(index: widget.index));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  widget.basketData.count.toString(),
                                  style: const TextStyle(fontSize: 16, color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.read<BasketBloc>().add(Increment(index: widget.index));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.black26,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            context.read<BasketBloc>().add(RemoveProduct(index: widget.index));
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.delete_outline,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const Divider(
          thickness: 0.6,
          color: Colors.black12,
        ),
      ],
    );
  }
}
