import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustumDropdown extends StatelessWidget {
  CustumDropdown({super.key, required this.items});

  final List<String> items;

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: DropdownButtonFormField2<String>(
          validator: (value) {
            if (value == null) {
              return 'field is requied';
            }
          },
          isExpanded: true,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          ),
          hint: const Text(
            '--اختر--',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
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
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
            iconSize: 24,
          ),
        ),
      ),
    );
  }
}
