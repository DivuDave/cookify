import 'package:cookify/custom_button.dart';
import 'package:cookify/custom_field.dart';
import 'package:cookify/custom_text_button.dart';
import 'package:cookify/home.dart';
import 'package:flutter/material.dart';

import 'account_page.dart';
import 'first_page.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              SizedBox(height: 90),
              Icon(
                Icons.menu_book,
                color: Colors.deepOrangeAccent[100],
                size: 70,
              ),
              SizedBox(height: 10),
              Text(
                "Log In",
                style: TextStyle(
                  color: Colors.deepOrangeAccent[100],
                  fontSize: 27,
                ),
              ),
              SizedBox(height: 30),
              CustomField(
                hintText: "Email Adress",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 30),
              CustomField(
                hintText: "Password",
                prefixIcon: Icons.lock_outline,
                suffixIcon: Icons.remove_red_eye,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ForgotPassword();
                        }));
                      },
                      text: "Forgot Password",
                    )
                  ],
                ),
              ),
              CustomButton(
                text: "Log In",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Home();
                      },
                    ),
                  );
                },
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
