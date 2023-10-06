import 'package:flutter/material.dart';
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
        children:[
          LottieBuilder.asset('assets/pam.json',height: 150,),
           Padding( 
            
              padding: EdgeInsets.all(30), 
              child: TextField( 
                decoration: InputDecoration( 
                    border: OutlineInputBorder(), 
                    labelText: 'Login', 
                    hintText: 'Enter valid email id as abc@gmail.com'), 
              ), 
            ), 
            Padding( 
              padding: const EdgeInsets.all( 
                 30), 
               
              child: TextField( 
  
                obscureText: true, 
                decoration: InputDecoration( 
                    border: OutlineInputBorder(), 
                    labelText: 'Password', 
                    hintText: 'Enter secure password'), 
              ), 
            ), 
  
          SizedBox( 
            height: 65, 
            width: 360, 
            child: Container( 
                child: Padding( 
                  padding: const EdgeInsets.all(10), 
                  child: ElevatedButton( 
                    child: Text( 'Log in ', style: TextStyle(color: Colors.white, fontSize: 20), 
                    ), 
                    onPressed: (){ 
                      
                    }, 
  
                  ), 
                ), 
              ), 
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
                        child: Text('Dont have an Account?'), 
                      ), 
  
                      Padding( 
                        padding: const EdgeInsets.only(left:1.0), 
                        child: InkWell( 
                          onTap: (){ 
                            
                          }, 
                            child: Text('Sign up.', style: TextStyle(fontSize: 14, color: Colors.blue),)), 
                      ) 
                    ], 
                  ), 
                ) 
             
        ],
      ),
    );
  }
}
