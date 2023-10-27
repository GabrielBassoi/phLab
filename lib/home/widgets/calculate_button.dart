import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../colors/colors.dart';
import '../../stores/home_store.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({Key? key}) : super(key: key);

  final HomeStore homeStore = GetIt.I<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors1.green)
            ),
            onPressed: () {
              homeStore.calculatePH();
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Calculate", style: TextStylesA.blackText,),
            ),
          ),
        ),
      ],
    );
  }
}
