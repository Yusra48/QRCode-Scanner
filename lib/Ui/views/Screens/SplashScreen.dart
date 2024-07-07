import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ui/Views/Home/Homeview.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  void gotoNextScreen() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Homeview()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(children: [
          Center(
            child: Lottie.asset(
              'assets/Scanner.json',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
              onLoaded: (composition) {
                Future.delayed(const Duration(seconds: 3), gotoNextScreen);
              },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'QR CodeScanner',
            style: GoogleFonts.ubuntu(
                textStyle: TextStyle(
              fontSize: 35,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
          ),
        ]),
      ),
    );
  }
}
