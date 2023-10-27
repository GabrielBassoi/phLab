import 'dart:async';

import 'package:flutter/material.dart';

import '../colors/colors.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () => Navigator.of(context).pushReplacementNamed('/home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors1.primary,
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Stack(
            children: [
              Center(
                  child: Image.asset("assets/images/logo.png",
                    width: 220,
                    height: 220,
                  )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("Developed by Gabriel Bassoi",
                  style: TextStylesA.greenBoldText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
