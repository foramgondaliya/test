import 'package:exam/utils/allProductData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 300,
            width: 370,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://m.media-amazon.com/images/I/61FVEqUK9qL._SX679_.jpg",
                  )
                )
              ),
          ),),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 395,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search_rounded,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Search Your Choice...",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...ProductData.allProductsData.map((e) =>
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Text("${e['name']}",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Column(
                        children: [
                             Container(
                              height: 300,
                              width: 380,
                              padding: EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  ...e['data'].map((Map<String,dynamic>e){
                                    return
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.of(context).pushNamed('details',arguments: e);
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(right: 3,left: 3),
                                            margin: EdgeInsets.only(right: 3,left: 3),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                            flex:3,
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: NetworkImage(
                                                                    "${e['thumbnail']}",
                                                                  ),
                                                                  fit: BoxFit.cover
                                                                ),
                                                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                                              ),
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.only(right: 8,top: 8),
                                                                    child: Icon(Icons.favorite_border,
                                                                      size: 25,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )),
                                                        Expanded(
                                                            flex:2,
                                                            child: Container(
                                                              padding: EdgeInsets.only(top: 10),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text("${e['title']}",
                                                                        style: TextStyle(
                                                                          fontSize: 20,
                                                                          fontWeight: FontWeight.bold,
                                                                          letterSpacing: 1
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Text(
                                                                        "${e['price']}",
                                                                        style: TextStyle(
                                                                          fontSize: 20,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20)),
                                                                color: Colors.white,
                                                                boxShadow: <BoxShadow>[
                                                                  BoxShadow(
                                                                    color: Colors.grey.shade500,
                                                                    blurRadius: 6,
                                                                    spreadRadius: 1,
                                                                    offset: Offset(0,2),
                                                                  )
                                                                ]
                                                              ),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                    );
                                  })
                                ],
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
