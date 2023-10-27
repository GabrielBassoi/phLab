import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

import '../../colors/colors.dart';
import '../../stores/home_store.dart';

class ConcentrationField extends StatelessWidget {
  ConcentrationField({Key? key}) : super(key: key);

  final HomeStore homeStore = GetIt.I<HomeStore>();

  TextEditingController textController = TextEditingController();
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Concentration", style: TextStylesA.greenBoldText,),
        const SizedBox(height: 8),
        TextFormField(
          maxLines: 1,
          cursorColor: Colors1.green,
          cursorRadius: const Radius.circular(8),
          controller: textController,
          style: TextStylesA.whiteText,
          onChanged: (input) {
            homeStore.concentration = input;
          },
          decoration: InputDecoration(
            hintText: "Concentration of the acid (mol/L)",
            hintStyle: TextStylesA.lowText,
            filled: true,
            fillColor: Colors1.secundary,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            )
          )
        )
      ],
    );
  }
}
