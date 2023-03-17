
import 'package:flutter/cupertino.dart';

import '../view/Product.dart';
import '../view/Search.dart';
import '../view/cart.dart';

class Tabbar_provider extends ChangeNotifier
{
  List Screen = [
    Product(),
    Search(),
    Cart(),
  ];
}