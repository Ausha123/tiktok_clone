import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                "images/tiktok.png",
                width: 200,
              ),
              Text(
                "Welcome",
                style: GoogleFonts.acme(
                    fontSize: 34,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Glad to see you!",
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
