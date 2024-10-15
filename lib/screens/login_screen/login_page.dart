import 'package:flutter/material.dart';
import 'package:graduated_project/config/routes_manager/routes.dart';
import 'package:graduated_project/core/components/custum_button.dart';
import 'package:graduated_project/core/components/custum_dropdown.dart';
import 'package:graduated_project/core/components/custum_text_field.dart';
import 'package:graduated_project/core/utils/assets_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? password;
  var formKey = GlobalKey<FormState>();
  final List<String> items = [
    'عضو هيئة تدريس',
    'طالب دراسات عليا',
    'طالب بكالوريوس / ليسانس',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 300,
                child: Image.asset(ImageAssets.tanta_universityLogo),
              ),
              const SizedBox(
                height: 50,
              ),

              CustumDropdown(
                items: items,
              ),
              // CustumFormTextField(
              //  onChanged: (data){
              //    email = data;
              //  },
              //  HentText: ,
              // ),
              const SizedBox(
                height: 20,
              ),
              CustumFormTextField(
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'field is requied';
                  }
                  String pattern =
                      r"(2|3)[0-9][1-9][0-1][1-9][0-3][1-9](01|02|03|04|11|12|13|14|15|16|17|18|19|21|22|23|24|25|26|27|28|29|31|32|33|34|35|88)\d\d\d\d\d";
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value!)) {
                    return "Enter a valid national id";
                  }
                },
                obscureText: true,
                onChanged: (data) {
                  password = data;
                },
                HentText: 'الرقم القومي',
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 50,
              ),
              CustumBotton(
                text: 'تسجيل الدخول',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      Routes.mainScreen,
                      (r) => false,
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
