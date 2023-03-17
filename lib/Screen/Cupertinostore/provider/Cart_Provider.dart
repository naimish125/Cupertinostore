  import 'package:flutter/material.dart';

  class Cart_provider extends ChangeNotifier
  {
    DateTime delivery = DateTime(2023, 13, 3, 8, 40);

    void changedate(DateTime news)
    {
      delivery = news;
      notifyListeners();
    }
  }