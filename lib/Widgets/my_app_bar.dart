import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.white10,
              ],
              begin:  FractionalOffset(0.0, 0.0),
              end:  FractionalOffset(1.0, 0.0),
              stops: [0.0,1.0],
              tileMode:TileMode.clamp,
            )
        ),
      ),
      title: const Text("AK Food",
        style:TextStyle(
          fontSize: 60,
          color: Colors.white,
          fontFamily: "Lobster",
        ),
      ),

      centerTitle: true,
    );
  }
}