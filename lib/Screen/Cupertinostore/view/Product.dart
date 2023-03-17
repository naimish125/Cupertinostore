import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Product_Provider.dart';



class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Product_provider? P, Pt;

  @override
  Widget build(BuildContext context) {
    P = Provider.of<Product_provider>(context, listen: false);
    Pt = Provider.of<Product_provider>(context, listen: true);
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 120,
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                Text(
                  "Cupertino Store",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black),
                ),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: P!.productName.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("${P!.images[index]}")),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${P!.productName[index]}"),
                                SizedBox(height: 8,),
                                Text("${P!.productPrice[index]}",style: TextStyle(color: Colors.black54,fontSize: 13),),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            Icon(CupertinoIcons.add_circled),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black45,
                        thickness: 0.5,
                        indent: 90,
                        endIndent: 10,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}