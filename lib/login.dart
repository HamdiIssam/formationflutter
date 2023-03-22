import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_app/home.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text('email',
            style: TextStyle(fontSize:15,color: Colors.redAccent )),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none,hintText: 'email' ),controller: emailController ,
                  ),
                ),
              ),
            ),
             SizedBox(height: 30),

            Text('password',style:TextStyle(fontSize: 15,color:Colors.deepPurple ,)
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                
                decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 158, 158, 158)),borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField( 
                    obscureText: true,
                   decoration:InputDecoration(border: InputBorder.none,hintText: 'password' ) , controller: passwordController,
                  ),
                )
              ),
            ),
            SizedBox(height: 10),
            
            ElevatedButton(onPressed: (){
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              print(emailController.text);
              print(passwordController.text);
            }, child: Text('login'))
          ],
        ),
      ),
    );
  }
}