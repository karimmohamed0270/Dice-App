import 'package:dice_app/widgets/custom_text.dart';
import 'package:dice_app/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}
// we make Random object here because if i made it in set state in the every time will create 
// so i create object above an use it one time in set state
  var random=Random();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var imagelink = "images/dice-1.png";
  void rolldice() {
    // random number from 1 to 6
   var imgNum= random.nextInt(6)+1;
    setState(() {
      imagelink = "images/dice-$imgNum.png";
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.amber,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red,
            const Color.fromARGB(255, 129, 40, 34),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                imagelink,
                height: 170,
              ),
              ElevatedButton(
                onPressed: () {
                  rolldice();
                },
                child: const Text("Roll Dice"),
                style: ButtonStyle(),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
