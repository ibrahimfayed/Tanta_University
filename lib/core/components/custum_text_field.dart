import 'package:flutter/material.dart';

//i seperate it because i will use it a lot of times
class CustumFormTextField extends StatelessWidget {
  CustumFormTextField(
      {super.key,
      this.HentText,
      this.onChanged,
      this.obscureText = false,
      this.validate});

  String? HentText;
  Function(String)?
      onChanged; //i can't use voidcallback here yet because i don't need void fun
  bool? obscureText;
  String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          //step 3 in validation, TextFormField i use instead of TextField because i want to use inside the form
          style: const TextStyle(
              color: Colors
                  .black), //here i can change the color of the text entered by the user.
          obscureText:
              obscureText!, //to hide the password and ! because it must take a value
          validator:
              validate ////step 4 in validation,value is an empty string '' but not null

          //     (value) {
          //   if (value!.isEmpty) {
          //     return 'field is requied';
          //   }
          //   return null;
          // }
          ,
          onChanged:
              onChanged, //i use here onChanged not onSubmit because this make the value don't come to me else i make submit
          decoration: InputDecoration(
            hintText: HentText,
            hintTextDirection: TextDirection.rtl,
            hintStyle: TextStyle(
              color: Colors.grey[500],
            ),
            // focusedBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.red
            //   ),
            // ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
