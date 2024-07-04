import 'dart:async';
import 'package:dice/home.dart';
import 'package:flutter/material.dart';
class dell extends StatefulWidget {
  const dell({super.key});

  @override
  State<dell> createState() => _dellState();
}

class _dellState extends State<dell> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),() =>
        Navigator.pushReplacement(context,MaterialPageRoute(builder:(BuildContext contex)=> home()))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(

          children: [
            SizedBox(
              height: 200,
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/ludo.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text('Luddo King',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(color: Colors.black,),
            )
          ],
        ),
      ),
    );
  }
}

