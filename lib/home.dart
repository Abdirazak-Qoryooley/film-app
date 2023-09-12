// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:json_practice/data.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0000814),
        title: Text(
          'Movie App',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  hintText: 'search movie name',
                  hintStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                'Popular Movies',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 400,
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: getdata.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 9),
                          width: 200,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(getdata[index].image),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          getdata[index].name,
                          style: TextStyle(fontSize: 19),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 25,
                                  color: Colors.amber,
                                ),
                                Text(
                                  getdata[index].rating.toString(),
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              getdata[index].time.toString(),
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              width: 400,
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: getanotherdata.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          width: 200,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(getanotherdata[index].image))),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          getanotherdata[index].name,
                          style: TextStyle(fontSize: 19),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 25,
                                  color: Colors.amber,
                                ),
                                Text(
                                  getanotherdata[index].rating.toString(),
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              getanotherdata[index].time.toString(),
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
