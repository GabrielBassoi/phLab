import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../../colors/colors.dart';
import '../../stores/home_store.dart';

class AcidField extends StatelessWidget {
  AcidField({Key? key}) : super(key: key);

  final HomeStore homeStore = GetIt.I<HomeStore>();

  final dropValue = ValueNotifier('');
  final dropOptions = ['0', '1', '2', '3', '4'];

  String acidName = "";
  String acidKa = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Acid",
          style: TextStylesA.greenBoldText,
        ),
        const SizedBox(height: 8),
        DropMenu(context),
        Observer(builder: (context) {
          if (homeStore.acid != '') {
            return Column(children: [const SizedBox(height: 16), Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(acidName, style: TextStylesA.whiteText,),
                Text(acidKa, style: TextStylesA.whiteText,)
              ],
            )],);
          } else {
            return Container();
          }
        })
      ],
    );
  }

  Widget DropMenu(BuildContext context) {
    return ValueListenableBuilder(valueListenable: dropValue, builder: (BuildContext context, String value, _) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors1.secundary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(focusColor: Colors1.gray),
          child: DropdownButton(
            dropdownColor: Colors1.secundary,
            focusColor: Colors1.secundary,
            underline: Container(),
            isExpanded: true,
            icon: Icon(Icons.expand_more_rounded, color: Colors1.green),
            iconSize: 40,
            borderRadius: BorderRadius.circular(8),
            hint: Text('Select the acid', style: TextStylesA.lowText,),
            value: (value.isEmpty) ? null : value,
            onChanged: (option) {
              dropValue.value = option.toString();
              homeStore.acid = option!;
              acidName = homeStore.acidNameList.elementAt(int.parse(option));
              acidKa = "Ka = ${homeStore.acidKaList.elementAt(int.parse(option))}";
            },
            items: dropOptions.map((op) => DropdownMenuItem(
              value: op,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(homeStore.acidNameList.elementAt(int.parse(op)), style: TextStylesA.whiteBoldText,),
                  if (op != dropValue.value)
                    Text(homeStore.acidQList.elementAt(int.parse(op)), style: TextStylesA.whiteText,)
                ],
              ),
            )).toList(),
          ),
        ),
      );
    });
  }
}
