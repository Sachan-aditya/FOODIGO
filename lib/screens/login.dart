import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery/screens/home.dart';
import 'package:grocery/screens/signp.dart';
import 'package:lottie/lottie.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            'assets/pam.json',
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Login',
                  hintText: 'Enter valid email id'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'min 6 digit password'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  child: Text(
                    'Log in ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      shadowColor: Colors.black,
                      shape: StadiumBorder()),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
                child: Text("OR "),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.google),
                label: Text(
                  "Google",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 62),
                  child: Text('NEW USER?'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Homepage()));
                      },
                      child: Text(
                        'REGISTER HERE',
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
