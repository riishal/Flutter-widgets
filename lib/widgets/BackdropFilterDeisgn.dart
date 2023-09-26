import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterDeisgn extends StatefulWidget {
  const BackdropFilterDeisgn({Key? key}) : super(key: key);

  @override
  State<BackdropFilterDeisgn> createState() => _BackdropFilterDeisgnState();
}

class _BackdropFilterDeisgnState extends State<BackdropFilterDeisgn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://assets.manutd.com/AssetPicker/images/0/0/10/126/687707/Legends-Profile_Cristiano-Ronaldo1523460877263.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            child: Center(
                child: Text(
              'Crestiano Ronaldo',
              style: TextStyle(fontSize: 30, color: Colors.white),
            )),
            height: 300,
            width: 300,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
