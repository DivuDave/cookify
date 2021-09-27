import 'package:cookify/custom_field.dart';
import 'package:flutter/material.dart';

import 'account_page.dart';
import 'custom_button.dart';
import 'custom_text_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[900],
          ),
          child: Column(
            children: [
              SizedBox(height: 120),
              Icon(
                Icons.menu_book,
                color: Colors.deepOrangeAccent[100],
                size: 70,
              ),
              SizedBox(height: 20),
              Text(
                "Forgot Password",
                style: TextStyle(
                  color: Colors.deepOrangeAccent[100],
                  fontSize: 27,
                ),
              ),
              SizedBox(height: 40),
              CustomField(
                hintText: "Email Adress",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 40),
              CustomButton(
                onPressed: () {},
                text: "Forgot Password",
              ),
              SizedBox(height: 10),
              CustomTextButton(
                text: "I haven't an account",
                decoration: TextDecoration.underline,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return AccountPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
