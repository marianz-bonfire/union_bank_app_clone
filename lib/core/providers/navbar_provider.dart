import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/enums/navbar_enum.dart';
import 'package:union_bank_app_clone/data/labels.dart';

class NavBarProvider with ChangeNotifier {
  int selectedNavIndex = NavBarEnum.DASHBOARD;
  String title = Labels.dashboard;

  Future<void> init() async {
    selectedNavIndex = NavBarEnum.DASHBOARD;
    notifyListeners();
  }

  Future<void> setSelectedNavIndex(int selectedIndex) async {
    selectedNavIndex = selectedIndex;
    setTitle();
    notifyListeners();
  }

  setTitle() {
    if (selectedNavIndex == NavBarEnum.DASHBOARD) {
      title = Labels.dashboard;
    } else if (selectedNavIndex == NavBarEnum.SEND_RECEIVE) {
      title = Labels.sendReceive;
    } else if (selectedNavIndex == NavBarEnum.PAY_BILLS) {
      title = Labels.payBills;
    } else if (selectedNavIndex == NavBarEnum.BUY_LOAD) {
      title = Labels.buyLoad;
    } else if (selectedNavIndex == NavBarEnum.MORE) {
      title = Labels.more;
    }
    notifyListeners();
  }
}
