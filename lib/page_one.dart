// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20, left: 15),
            height: MediaQuery.of(context).size.height * 1 / 3 + 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pizza.jpg'),
                alignment: Alignment.bottomRight,
              ),
              color: Colors.red,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Mega Deal',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'get mega deals here',
                  style: TextStyle(color: Colors.white70),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            // ListTile(
            //   leading: Container(
            //     height: 60,
            //     width: 70,
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       borderRadius: BorderRadius.circular(15)
            //     ),
            //   ),
            //   title: Text("Mc Donald's"),
            //   subtitle: Text('american cusine fast'),
            // ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 1 / 3 - 20),
              height: MediaQuery.of(context).size.height * 2 / 3,
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Scaffold(
                body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        title: Text("Mc Donald's"),
                        subtitle: Text('american cusine fast'),
                        trailing: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                      Row(
                        children: [
                          Text('daily there'),
                          Text(
                            ' 9:30 am to 11:00pm',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,size: 15,color: Colors.orange,),
                          Text(' 4.9'),
                          Text(' 200+ readings',style: TextStyle(fontSize: 12,color: Colors.black54),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_sharp,color: Colors.orange,size: 15,),
                          Text('location',style: TextStyle(fontSize: 12,color: Colors.black54))
                        ],
                      ),
                      SizedBox(height: 15,),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent[100],
                              borderRadius: BorderRadius.circular(50)),
                          child: 
                          Row()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 2 / 3),
          child: Scaffold(
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, i) {
                  return Container(
                    child: Card(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 60,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15)),
                              width: (MediaQuery.of(context).size.width - 40) *
                                  1 /
                                  4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('data'),
                                    Text('data'),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.outbox_outlined,
                                          size: 15,
                                        ),
                                        Text('27')
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 75,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ],
                            )
                          ],
                        )),
                  );
                }),
          ),
        )
      ],
    );
  }
}
