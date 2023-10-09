import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/screens/login.dart';
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text("FOODIGO",
              style: GoogleFonts.lato(
                  textStyle: const  TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.brown))),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Made with  ",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ),
              FaIcon(
                FontAwesomeIcons.heart,
                color: Colors.red,
              ),
              Text("  by ADITYA SACHAN ",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Loginscreen()));
              },
              child: Text("PRESS"))
        ],
      ),
    );
  }
}
