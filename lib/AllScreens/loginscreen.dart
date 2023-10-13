import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter/AllScreens/homescreen.dart';
import 'dart:convert';

import 'package:dio/dio.dart';

final dio = Dio();

Future<bool> getHttp(String email, String pass) async {
  final response = await dio.post(
      'https://api-simple-kbc3.onrender.com/users/get_token/',
      data: {'email': email, 'password': pass});
  if (response.statusCode == 200) {
    return Future<bool>.value(true);
  } else {
    return Future<bool>.value(false);
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  foregroundColor: Color.fromARGB(255, 0, 0, 0),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const String idScreen = "homescreen";
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 45.0,
              ),
              Image(
                image: AssetImage('images/book.png'),
                width: 390.0,
                height: 350.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: GoogleFonts.playfairDisplay(
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 1.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(children: [
                  SizedBox(
                    height: 1.0,
                  ),
                  TextField(
                    controller: emailTextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: passwordTextEditingController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: "Senha", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () async {
                      if (await getHttp(emailTextEditingController.text,
                              passwordTextEditingController.text) ==
                          true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      } else {
                        print("nada");
                      }
                    },
                    child: Text('Login'),
                  )
                ]),
              ),
              TextButton(
                style: flatButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: Text('Não possui uma conta? Crie uma agora.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
