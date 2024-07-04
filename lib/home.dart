import 'package:flutter/material.dart';
import 'dart:math';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int image1 = 0;
  int image2 = 0;
  int image3 = 0;
  int image4 = 0;
  int image5 = 0;
  int image6 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text('Fun Time',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
      ),
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          children: [
            Container(
                width: 200,
                height: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(5),
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      setState(() {
                        image1 = Random().nextInt(6);
                      });
                    },
                    child: Image.asset('images/dice$image1.png'))),
            Row(
              children: [
                Container(
                    width: 200,
                    height: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(5),
                            backgroundColor: Colors.transparent),
                        onPressed: () {
                          setState(() {
                            image2 = Random().nextInt(6);
                          });
                        },
                        child: Image.asset('images/dice$image2.png'))),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      width: 200,
                      height: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(5),
                              backgroundColor: Colors.transparent),
                          onPressed: (){
                            setState(() {
                              image3=Random().nextInt(6);
                            });
                          },
                          child: Image.asset('images/dice$image3.png'))),
                ),
              ],
            ),
            Container(
              width: 200,
              height: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(5),
                      backgroundColor: Colors.transparent),
                  onPressed: (){
                    setState(() {
                      image3=Random().nextInt(6);
                    });
                  },
                  child: Image.asset('images/dice$image3.png')),
            ),
          ],
        ),
      ),
    );
  }
}
