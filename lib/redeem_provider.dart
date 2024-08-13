import 'package:flutter/material.dart';

class RedeemProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> redeemed = [];

  void addFreebie(Map<String, dynamic> freebie) {
    redeemed.add(freebie);
    notifyListeners();
  }

  void removeFreebie(Map<String, dynamic> freebie) {
    redeemed.remove(freebie);
    notifyListeners();
  }
}
