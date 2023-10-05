import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LottieBuilder.asset('assets/animation_lndhvqe8.json'),
      
         Text("FOODIGO"

         )
        ],
      )
    );
  }
}
