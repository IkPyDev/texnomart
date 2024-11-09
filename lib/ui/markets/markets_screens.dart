import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gap/gap.dart';
import 'package:texnomart/ui/map/map_screen.dart';
import 'package:texnomart/utils/widget.dart';
import '../../data/model/model.dart';
import '../../presentation/bloc/markets/markets_bloc.dart';
import '../../utils/status.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      context.read<MarketsBloc>().add(SearchMarketEvent(controller.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MarketsBloc, MarketsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text('Do\'konlar'),
            actions: [
              if (state.status == Status.success) _buildPopupMenuButton(context, state),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(state.status == Status.loading) getLoading(),
                  if(state.status == Status.success) _buildSearchTextField(),
                  const Gap(12),
                  if(state.status == Status.success) Text(state.data[state.index].name, style: const TextStyle(color: Colors.black, fontSize: 20)),
                  const Gap(12),
                  if (state.status == Status.success)
                    ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (c, i) => GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (c) => MapScreen(data: state.filteredData[i])));
                          },
                          child: _buildStoreItem(state.filteredData[i])),
                      separatorBuilder: (_, __) => Divider(
                        height: 0.3,
                        color: Colors.grey.shade300,
                      ),
                      itemCount: state.filteredData.length,
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPopupMenuButton(BuildContext context, MarketsState state) {
    return PopupMenuButton<String>(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Builder(
            builder: (context) {
              final name = state.data[state.index].name.split(" ");
              return Text(name[0]);
            },
          ),
          const Icon(Icons.keyboard_arrow_down),
          const Gap(16),
        ],
      ),
      onSelected: (value) {
        final index = int.tryParse(value) ?? 0;
        context.read<MarketsBloc>().add(SelectMarketEvent(index));
      },
      itemBuilder: (BuildContext context) {
        return state.data.asMap().entries.map((entry) {
          final index = entry.key;
          final choice = entry.value;
          final name = choice.name.split(" ");
          return PopupMenuItem<String>(
            value: index.toString(),
            child: Text(name[0]),
          );
        }).toList();
      },
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        fillColor: const Color(0xF1F1F4FF),
        hintText: "Manzil",
        prefixIcon: const Icon(Icons.search_rounded),
      ),
    );
  }

  Widget _buildStoreItem(OpenedStore data) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Image.asset(
            "assets/app_icon/location.png",
            height: 30,
            width: 30,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.address,
                  style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Du-Yak(${data.workTime})",
                  style: const TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
      ],
    );
  }
}
