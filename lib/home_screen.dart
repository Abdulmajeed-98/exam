// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exam_bootcamp/list/restaurant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextStyle hw = TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
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
                        image: AssetImage('assets/images/pizza2.jpeg'),
                        fit: BoxFit.fill)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Mega Deal',
                      style: hw,
                    ),
                    Text(
                      'get mega daels here',
                      style: sw,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 1 / 3 - 15),
                padding: EdgeInsets.only(left: 15, top: 20, right: 15),
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
                        margin: EdgeInsets.only(bottom: 15),
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange[800]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Wrap(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Campaign info',
                                  style: hw,
                                )
                              ],
                            ),
                            Wrap(
                              children: [
                                Text(
                                  'Read more',
                                  style: sw,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: List.generate(
                            restaurants.length, (i) => allResturants(i,sb)),
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

allResturants(int i,TextStyle s) {
  return Container(
    height: 90,
    margin: EdgeInsets.only(bottom: 5),
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
                    fit: BoxFit.fill,
                    image: AssetImage(restaurants[i]['logo']))),
          ),
          Container(
            width: 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurants[i]['name'],style: TextStyle(fontWeight: FontWeight.bold),),
                Text(
                  restaurants[i]['disc'],
                  style: s,
                ),
                SizedBox(height: 8,),
                Wrap(
                  children: [
                    Wrap(
                      children: List.generate(5, (index)=>Icon(Icons.star,color: Colors.amber,size: 15,)),
                    ),
                    SizedBox(width: 8,),
                    Icon(Icons.file_upload_outlined,size: 15,color: Colors.black54,),
                    Text('${restaurants[i]['cos']}',style: s,)
                  ],
                )
              ],
            ),
          ),
          Spacer(flex: 3,),
          Icon(
            Icons.favorite,
            color: Colors.orange[800],
          ),
          Spacer()
        ],
      ),
    ),
  );
}
