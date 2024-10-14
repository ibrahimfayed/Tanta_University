import 'package:flutter/material.dart';
import 'package:graduated_project/components/Custum_text_field.dart';
import 'package:graduated_project/components/custum_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 30,),
            SizedBox(height: 300,
              child:
               Image.asset('assets/images/tanta_university_logo.png'),),
              const SizedBox(height: 50,),
               CustumFormTextField(
                onChanged: (data){
                  email = data;
                },
                HentText: 'Email',
               ),
               const SizedBox(
                  height: 20,
                 ),
               CustumFormTextField(
                obscureText: true,
                 onChanged: (data){
                  password = data;
                },
                HentText: 'Password',
               ),
               const SizedBox(
                  height: 12,
                 ),
                const SizedBox(height: 50,),
                 CustumBotton(text: 'Log In')
                 
                 
            
          ],
        ),
      ),
    );
  }
}