import 'package:clean_arq_flutter/UI/helper/tab_index.dart';
import 'package:clean_arq_flutter/domain/model/category/gateway/category.dart';
import 'package:flutter/material.dart';
import 'package:clean_arq_flutter/config/usecase_config.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/future_error.dart';
import 'package:clean_arq_flutter/UI/pages/home/components/future_progress.dart';
import 'package:clean_arq_flutter/UI/commons/settings.dart';
import 'package:provider/provider.dart';

class categories extends StatefulWidget {
  static UseCaseConfig? _useCaseConfig;
  Future? _listCategories;

  categories(UseCaseConfig useCaseConfig) {
    _useCaseConfig = useCaseConfig;
    _listCategories = _useCaseConfig!.getCategorytUseCase().getAll();
  }
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List<Category> categories = [];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget._listCategories,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        List<Widget> children;
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            children = getErrorWidget(snapshot);
          } else {
            return buildListCategories(snapshot.data);
          }
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          children = getDataLoadingInProgress();
        } else {
          children = getErrorWidget(snapshot);
        }
        return Center();
      },
    );
  }

  Widget buildListCategories(data) {
    categories = data as List<Category>;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    final tabIndex = Provider.of<TabIndex>(context);
    return GestureDetector(
      onTap: () {
        setState(
          () {
            tabIndex.stateTabIndex = index;
            selectedIndex = index;
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index].title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: selectedIndex == index
                    ? Settings.kTextLightColor
                    : Settings.kTextColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              height: 2,
              width: 40,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
