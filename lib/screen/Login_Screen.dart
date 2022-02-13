import 'package:car/constens.dart';
import 'package:flutter/material.dart';

import '../widgets/costom_textfield.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KMainColor,
      body: ListView(children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(
                height: MediaQuery.of(context).size.height * .2,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('images/Icons/car2.png')),
                    Positioned(
                        bottom: 0,
                        child: Text(
                          'Cars',
                          style: TextStyle(
                              fontFamily: 'Lora-Italic-VariableFont_wght',
                              fontSize: 40),
                        ))
                  ],
                ))),
        SizedBox(
          height: height * .1,
        ),
        CostomTextfield(
          hint: 'Enter your email or number',
          icon: Icons.email,
        ),
        SizedBox(
          height: height * .01,
        ),
        CostomTextfield(
          hint: 'Enter your password',
          icon: Icons.lock,
        ),
        SizedBox(
          height: height * .09,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                // Background Color
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            )),
        SizedBox(
          height: height * .1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\t have any account ? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Text(
              'Login',
              style: TextStyle(fontSize: 16),
            )
          ],
        )
      ]),
    );
  }
}
