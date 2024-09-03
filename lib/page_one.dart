// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exam_bootcamp/list/restaurant.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  TextStyle hw =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  TextStyle sw = TextStyle(fontSize: 14, color: Colors.white);
  TextStyle sb = TextStyle(fontSize: 12, color: Colors.black54);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1 / 3,
                padding: EdgeInsets.only(top: 20, left: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/mac_bulding.jfif'),
                        fit: BoxFit.fill)),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 1 / 3 - 15),
                // padding: EdgeInsets.only(left: 15, top: 10, right: 15),
                height: MediaQuery.of(context).size.height * 2 / 3 + 15,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        child: ListTile(
                          leading: Container(
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage(restaurants[0]['logo'])))),
                          title: Text(
                            restaurants[0]['name'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            restaurants[0]['disc'],
                            style: sb,
                          ),
                          trailing: Icon(
                            Icons.favorite,
                            color: Colors.orange[800],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'daily time',
                                  style: sb,
                                ),
                                Text(
                                  '${restaurants[0]['time']}',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.orange[800]),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.orange[800],
                                ),
                                Text(
                                  '${restaurants[0]['rate']}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ' ${restaurants[0]['rank']}+ Rankings',
                                  style: sb,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.place,
                                  color: Colors.orange[800],
                                  size: 15,
                                ),
                                Text(
                                  'Location',
                                  style: sb,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 15),
                              height: 40,
                              child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) =>
                                      tapBar(index, 10)),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children:
                            List.generate(meals.length, (i) => allMeals(i, sb)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

allMeals(int i, TextStyle s) {
  return Container(
    height: 90,
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    width: double.infinity,
    child: Card(
      elevation: 4,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(meals[i]['pic']))),
          ),
          Container(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meals[i]['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  meals[i]['disc'],
                  style: s,
                ),
                SizedBox(
                  height: 8,
                ),
                Wrap(
                  children: [
                    Wrap(children: [
                      Text(
                        "\$${meals[i]['price']} ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(" \$${meals[i]['oldprice']}",style: TextStyle(fontSize: 12,color: Colors.black54,decoration: TextDecoration.lineThrough),)
                    ]),
                    
                  ],
                )
              ],
            ),
          ),
          Spacer(flex: 2,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.favorite_border,
              ),
              Icon(
                Icons.add,
              ),
            ],
          ),
          Spacer()
        ],
      ),
    ),
  );
}

Container tapBar(int i, int c) {
  BorderRadius x = BorderRadius.zero;
  TextStyle s = TextStyle();
  if (i == 0) {
    x = BorderRadius.horizontal(left: Radius.circular(50));
    s = TextStyle(color: Colors.orange[800]); 
  }
  if (i == c - 1) {
    x = BorderRadius.horizontal(right: Radius.circular(50));
  }
  return Container(
    height: 40,
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(color: Colors.orange[100], borderRadius: x),
    child: Center(child: Text("food",style: s,)),
  );
}
