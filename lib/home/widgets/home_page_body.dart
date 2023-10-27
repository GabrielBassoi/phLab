import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import 'ph_field.dart';
import 'acid_field.dart';
import 'calculate_button.dart';
import 'concentration_field.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AcidField(),
          Space32(),
          Divider(height: 1, color: Colors1.secundary,),
          Space32(),
          ConcentrationField(),
          Space32(),
          CalculateButton(),
          Space32(),
          PhField(),
        ],
      ),
    );
  }

  Widget Space32() {
    return const SizedBox(height: 32);
  }
}
