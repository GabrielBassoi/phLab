import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../colors/colors.dart';
import '../../stores/home_store.dart';

class PhField extends StatelessWidget {
  PhField({Key? key}) : super(key: key);

  final HomeStore homeStore = GetIt.I<HomeStore>();

  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "pH",
            style: TextStylesA.greenBoldText,
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors1.secundary,
                borderRadius: BorderRadius.circular(8)
            ),
            child: homeStore.pH == "" ? Text("Solution pH", style: TextStylesA.lowText,) : Text(homeStore.pH, style: TextStylesA.whiteText,),
          ),
          if (homeStore.pH != '') ...[
            const SizedBox(height: 32),
            RichText(
                text: TextSpan(
                    text: homeStore.solution,
                    style: TextStylesA.bigWhiteBoldText,
                    children: [
                      TextSpan(text: " Solution", style: TextStylesA.bigLowText)
                    ]
                )
            )
          ]
        ],
      );
    });
  }
}

// TextFormField(
// readOnly: true,
// keyboardType: TextInputType.number,
// maxLines: 1,
// style: TextStylesA.whiteText,
// initialValue: homeStore.pH,
// decoration: InputDecoration(
// hintText: "Solution pH",
// hintStyle: TextStylesA.lowText,
// filled: true,
// fillColor: Colors1.secundary,
// border: OutlineInputBorder(
// borderSide: BorderSide.none,
// borderRadius: BorderRadius.circular(8),
// ))),