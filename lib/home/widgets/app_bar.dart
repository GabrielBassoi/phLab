import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class AppBar2 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar2({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors1.secundary,
      title: Text(
        "pHLab",
        style: TextStylesA.greenBoldText
      ),
    );
  }
}
