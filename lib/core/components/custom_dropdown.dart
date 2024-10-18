import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:graduated_project/core/utils/color_manager.dart';

class CustomDropdown extends StatelessWidget {
  CustomDropdown({super.key, required this.items});

  final List<String> items;

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: DropdownButtonFormField2<String>(
        validator: (value) {
          if (value == null) {
            return 'field is requied';
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorManager.colorTextField,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 0, color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 0, color: Colors.transparent),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item.tr(),
                    style: const TextStyle(
                      fontFamily: 'readex',
                      color: Color(0xFF333333),
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        onChanged: (value) {
          value = selectedValue;
        },
        onSaved: (value) {
          selectedValue = value.toString();
        },
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          elevation: 4,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
            color: Color(0xff7B7B7B),
          ),
          iconSize: 24,
        ),
      ),
    );
  }
}
