import 'package:clean_arq_flutter/UI/helper/cart_count.dart';
import 'package:clean_arq_flutter/UI/helper/tab_index.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/appbar_home.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/body_home.dart';
import 'package:clean_arq_flutter/config/usecase_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UseCaseConfig _useCaseConfig = UseCaseConfig();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TabIndex>(create: (_) => TabIndex()),
        ChangeNotifierProvider<CartCount>(create: (_) => CartCount()),
      ],
      child: Scaffold(
        appBar: AppBarHome(),
        body: BodyHome(_useCaseConfig),
      ),
    );
  }
}
