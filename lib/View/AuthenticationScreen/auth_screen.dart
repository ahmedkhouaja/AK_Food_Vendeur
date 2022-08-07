

import 'package:ak_food_vendeur/View/AuthenticationScreen/login_screen.dart';
import 'package:ak_food_vendeur/View/AuthenticationScreen/register_screen.dart';
import 'package:flutter/material.dart';

import '../../Widgets/my_app_bar.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.blueAccent,
                  ],
                  begin:  FractionalOffset(0.0, 0.0),
                  end:  FractionalOffset(1.0, 0.0),
                  stops: [0.0,1.0],
                  tileMode:TileMode.clamp,
                )
            ),
          ),
          automaticallyImplyLeading: false,
          title: const Text("AK Food",
            style:TextStyle(
              fontSize: 60,
              color: Colors.white,
              fontFamily: "Lobster",
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.lock, color: Colors.white,),
                  text: "Login",
                ),
                Tab(
                  icon: Icon(Icons.person , color: Colors.white,),
                  text: "Register",
                )
              ],
          indicatorColor: Colors.white70,
            indicatorWeight: 7,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blueAccent,
                Colors.redAccent,
              ],
            )
          ),
          child: const TabBarView(
            children: [
              LoginScreen(),
              RegisterScreen(),
            ],
          ),
        ),
      ),

    );
  }
}


