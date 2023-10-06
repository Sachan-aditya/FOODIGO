import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Delivery in ",style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                   
                  ),
                  Text("12 Miuutes",style: GoogleFonts.openSans(fontWeight:FontWeight.bold,fontSize: 30),),
                  Text("Location")
                ],
              ),
              FaIcon(FontAwesomeIcons.personArrowUpFromLine,size: 20,color: Colors.black,)
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey
              
            ),
          )
        ]),
      ),


    );
  }
}
