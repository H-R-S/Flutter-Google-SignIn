import 'package:flutter/material.dart';
import '../api/google_sign_in.dart';
import '../widgets/my_google_button.dart';
import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  Future googleSignIn() async {
    await GoogleSignInApi.login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          elevation: 1,
          title: const Text(
            "Flutter Developer Test",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
            padding: const EdgeInsets.all(20),
            child: MyGoogleButton(
              onTap: () async {
                googleSignIn();
                await Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              title: "SignUp with Google",
            )),
      ]),
    );
  }
}
