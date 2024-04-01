
import 'package:flutter/material.dart';

import '../utils/allProductData.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => cartPageState();
}

class cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ProductData.cartProductData.isEmpty
                ? Container(
              alignment: Alignment.center,
              child: Text(
                "No any products added to cart yet...",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            )
                : Container(
              padding: EdgeInsets.only(left: 18, right: 18, top: 18),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...ProductData.cartProductData.map(
                          (e) => Container(
                        margin: EdgeInsets.only(top: 12),
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          //color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 2,
                              color: Colors.grey.shade300,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 150,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "${e['thumbnail']}",
                                  ),
                                ),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${e['title']}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "\$ ${e['price']}",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.purple.shade300,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Place Order",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}