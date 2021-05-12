import 'package:clean_arq_flutter/UI/pages/home/components/item_card.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridProducts extends StatelessWidget {
  final listProducts;
  GridProducts(this.listProducts);
  @override
  Widget build(BuildContext context) {
    const _defaultPadding = 10.0;
    final counterBloc = BlocProvider.of<CounterShoppingCart>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: listProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: _defaultPadding,
            crossAxisSpacing: _defaultPadding,
            childAspectRatio: 0.80,
          ),
          itemBuilder: (context, index) => ItemCard(
            product: listProducts[index],
            press: () {
              counterBloc.add(CounterEvent.increment);
            },
          )),
    );
  }
}
