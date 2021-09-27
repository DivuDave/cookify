import 'package:cookify/log_in_page.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_field.dart';
import 'custom_text_button.dart';
import 'first_page.dart';
import 'forgot_password.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
              SizedBox(height: 80),
              Icon(
                Icons.menu_book,
                color: Colors.deepOrangeAccent[100],
                size: 70,
              ),
              SizedBox(height: 10),
              Text(
                "Create an Account",
                style: TextStyle(
                  color: Colors.deepOrangeAccent[100],
                  fontSize: 27,
                ),
              ),
              SizedBox(height: 20),
              CustomField(
                hintText: "Name",
                prefixIcon: Icons.account_box_outlined,
              ),
              SizedBox(height: 20),
              CustomField(
                hintText: "Email Adress",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
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
                text: "Create an Account",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              CustomTextButton(
                text: "I have already an account",
                decoration: TextDecoration.underline,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return LoginPage();
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
