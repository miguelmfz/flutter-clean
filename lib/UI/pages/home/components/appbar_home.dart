import 'package:clean_arq_flutter/UI/commons/settings.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarHome extends PreferredSize {
  AppBarHome() : super(
    preferredSize: AppBar().preferredSize,
    child: Container(),
  );
  @override
  Widget build(BuildContext context) {
      final counterBloc = BlocProvider.of<CounterShoppingCart>(context);
      return AppBar(
        backgroundColor: Settings.primaryColor,
        automaticallyImplyLeading: false,
        title: Text(Settings.titleAppBarHome, style: Settings.appBarHomeTitleStyle,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart_outlined,
                      color: Settings.shoppingCartColor,
                      size: Settings.shoppingCartIconSize,
                    ),
                    onPressed: () {
                      counterBloc.add(CounterEvent.clear);
                    },
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    child: BlocBuilder<CounterShoppingCart, int>(
                      builder: (_, count) {
                        return circleCount(count);
                      },
                    ),
                    alignment: Alignment.topRight,
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }

  static circleCount(int _count) {
    return new Container(
      margin: EdgeInsets.only(top: 8, right: 4),
      width: 20.0,
      height: 20.0,
      decoration: new BoxDecoration(
        color: Settings.circleCountColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(_count.toString(), style: Settings.circleCountStyle,),
      ),
    );
  }
}