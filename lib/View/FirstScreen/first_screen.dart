import 'dart:async';

import 'package:ak_food_vendeur/View/AuthenticationScreen/auth_screen.dart';
import 'package:flutter/material.dart';



class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  
  startTimer() {
    Timer (const Duration(seconds: 8), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => AuthScreen())) ;
    });  
  }


  @override
  void initState() {

    super.initState();
    startTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/FirstScreen.png")),

            const SizedBox(height: 20,),
            
             Container(
              padding: EdgeInsets.all(10.0),
                child: Text(
                  "Espace Vendeur ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 40,
                  fontFamily: "Signatra",
                  letterSpacing: 5,
                ),)
            ),
          ],
        ),
      ),
    );
  }
}
