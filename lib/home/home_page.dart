import 'package:flutter/material.dart';
import 'package:phlab/home/widgets/app_bar.dart';
import 'package:phlab/home/widgets/home_page_body.dart';

import '../colors/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar2(),
      body: HomePageBody(),
      backgroundColor: Colors1.primary,
    );
  }
}
