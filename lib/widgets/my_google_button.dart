import 'package:flutter/material.dart';

const String googleLogo = "assets/google_logo.png";

class MyGoogleButton extends StatelessWidget {
  final Function() onTap;
  final String title;

  const MyGoogleButton({required this.onTap, required this.title});
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          primary: Colors.white,
          shape: const StadiumBorder()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40, child: Image.asset(googleLogo)),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
      onPressed: onTap,
    );
  }
}
