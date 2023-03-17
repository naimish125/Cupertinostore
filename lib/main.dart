
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'Screen/Cupertinostore/provider/Cart_Provider.dart';
import 'Screen/Cupertinostore/provider/Product_Provider.dart';
import 'Screen/Cupertinostore/provider/Search_Provider.dart';
import 'Screen/Cupertinostore/provider/Tabbar_Provider.dart';
import 'Screen/Cupertinostore/view/Product.dart';
import 'Screen/Cupertinostore/view/Search.dart';
import 'Screen/Cupertinostore/view/Tabbar.dart';
import 'Screen/Cupertinostore/view/cart.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Product_provider(),),
        ChangeNotifierProvider(create: (context) => Search_provider(),),
        ChangeNotifierProvider(create: (context) => Cart_provider(),),
        ChangeNotifierProvider(create: (context) => Tabbar_provider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'TabBar',
        routes: {
          '/': (context) => TabBar(),
          'product': (context) => Product(),
          'search':(context) => Search(),
          'cart':(context) => Cart(),
        },
      ),
    ),
  );
}