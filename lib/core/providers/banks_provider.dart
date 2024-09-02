import 'package:flutter/material.dart';

class BanksProvider with ChangeNotifier {
  String selectedBank = '';
  Future<void> init() async {
    selectedBank = '';
    notifyListeners();
  }

  Future<void> setSelectedBank(String bank) async {
    selectedBank = bank;
    notifyListeners();
  }
}
