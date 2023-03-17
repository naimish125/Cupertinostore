import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Cart_Provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Cart_provider? c, ct;

  @override
  Widget build(BuildContext context) {
    c = Provider.of<Cart_provider>(context, listen: false);
    ct = Provider.of<Cart_provider>(context, listen: true);
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 75,
              width: double.infinity,
              color: CupertinoColors.white,
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Shopping Cart",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  CupertinoTextField.borderless(
                    prefix: Icon(
                      CupertinoIcons.person_alt,
                      color: Colors.black38,
                    ),
                    placeholder: "Name",
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: CupertinoTextField.borderless(
                    prefix: Icon(
                      CupertinoIcons.mail_solid,
                      color: Colors.black38,
                    ),
                    placeholder: "Email",
                  ),
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  CupertinoTextField.borderless(
                    prefix: Icon(
                      CupertinoIcons.location_solid,
                      color: Colors.black38,
                    ),
                    placeholder: "Location",
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: CupertinoTextField.borderless(
                prefix: Icon(
                  CupertinoIcons.time,
                  color: Colors.black38,
                ),
                placeholder: "Delivery Time",
                suffix: Text(
                    " ${ct!.delivery.day}-${ct!.delivery.month}-${ct!.delivery.year} ${ct!.delivery.hour}:${ct!.delivery.minute} "),
              ),
            ),
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  c!.changedate(value);
                },
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 41,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                width: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset("assets/images/images (1).jpeg"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shoes"),
                        Text("\$98.00",style: TextStyle(fontSize: 13,color: Colors.black54),),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("\$98.00"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 41,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 45,
                width: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset("assets/images/image_2_255936651383_2.jpg"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shoes"),
                        Text("\$58.00",style: TextStyle(fontSize: 13,color: Colors.black54),),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("\$58.00"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 4,),
            Container(
              height: 41,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 45,
                width: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image.asset("assets/images/shirt4.jpg"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shirt"),
                        Text("\$16.00",style: TextStyle(fontSize: 12,color: Colors.black54),),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("\$16.00"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Shipping \$21.00",style: TextStyle(fontSize: 8,color: Colors.black45),),
                  Text("Tax \$10.32",style: TextStyle(fontSize: 8,color: Colors.black45),),
                  Text("Total \$203.32"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 