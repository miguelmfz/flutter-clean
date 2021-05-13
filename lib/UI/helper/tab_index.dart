import 'package:flutter/foundation.dart';

class TabIndex with ChangeNotifier {
  int _stateTabIndex = 0;

  int get stateTabIndex => _stateTabIndex;

  set stateTabIndex(int index) {
    this._stateTabIndex = index;
    notifyListeners();
  }
}
