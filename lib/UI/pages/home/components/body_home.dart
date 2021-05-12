import 'package:clean_arq_flutter/UI/commons/settings.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/future_error.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/future_progress.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/grid_products.dart';
import 'package:clean_arq_flutter/config/usecase_config.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyHome extends StatelessWidget {

  static UseCaseConfig? _useCaseConfig;
  static Future? _listProducts;

  BodyHome(UseCaseConfig useCaseConfig) {
    _useCaseConfig = useCaseConfig;
    _listProducts = _useCaseConfig!.getProductUseCase().getAll(0);
  }

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterShoppingCart>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          var _height = constraints.minHeight - (constraints.minHeight * 0.11);
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 16.0, bottom: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Settings.primaryColor),
                    ),
                    onPressed: (){
                      counterBloc.add(CounterEvent.clear);
                    },
                    child: Text(Settings.pay, style: Settings.appBarHomeTitleStyle.copyWith(
                        color: Settings.primaryColor,
                        fontSize: 18.0
                    ),),
                  ),
                ),
              ),
              SizedBox(
                height: _height,
                child: RefreshIndicator(
                  onRefresh: _refreshData,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child:
                    FutureBuilder(
                      future: _listProducts,
                      builder: (context, snapshot) {
                        List<Widget> children;
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            children = getErrorWidget(snapshot);
                          } else {
                            return GridProducts(snapshot.data);
                          }

                        } else if (snapshot.connectionState == ConnectionState.waiting) {
                          children = getDataLoadingInProgress();

                        } else {
                          children = getErrorWidget(snapshot);
                        }
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: children,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }

  Future<void> _refreshData() async{
    _listProducts = _useCaseConfig!.getProductUseCase().getAll(0);
  }
}