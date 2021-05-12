
import 'package:clean_arq_flutter/UI/pages/home/components/appbar_home.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/body_home.dart';
import 'package:clean_arq_flutter/config/usecase_config.dart';
import 'package:clean_arq_flutter/infrastructure/mapper/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UseCaseConfig _useCaseConfig = UseCaseConfig();
    return BlocProvider(
      create: (_) => CounterShoppingCart(),
      child: Scaffold(
            appBar: AppBarHome(),
            body: BodyHome(_useCaseConfig),
      ),
    );
  }
}
