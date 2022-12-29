import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 70),
          child: Image.asset('assets/images/logo.png', width: 190),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text('ברוכים הבאים לדיילירן!',
              style: Theme.of(context).primaryTextTheme.headline4),
        ),
        TextButton(
            onPressed: () {},
            child: const Text('הרשמה למערכת',
                style: TextStyle(color: Colors.blue))),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'שם משתמש',
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: SizedBox(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'סיסמה',
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('התחברות'), // <-- Text
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        // <-- Icon
                        Icons.login,
                      ),
                    ],
                  ),
                ))),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 50,
              width: 300,
              child: SignInButton(
                Buttons.Google,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                text: "   התחברות עם גוגל",
                onPressed: () {},
              ),
            )),
      ])),
    );
  }
}
