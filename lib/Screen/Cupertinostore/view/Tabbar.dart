import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/Tabbar_Provider.dart';

class TabBar extends StatefulWidget {
  const TabBar({Key? key}) : super(key: key);

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  Tabbar_provider? t,tt;
  @override
  Widget build(BuildContext context) {
    t = Provider.of<Tabbar_provider>(context,listen: false);
    tt = Provider.of<Tabbar_provider>(context,listen: true);
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Products"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "Cart"),
      ],), tabBuilder: (context, index) {
      return CupertinoTabView(
        builder:(context) {
          return Center(
            child: t!.Screen[index],
          );
        },
      );
    },
    );
  }
}