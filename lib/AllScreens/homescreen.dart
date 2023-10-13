import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter/AllScreens/loginscreen.dart';

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

class HomeScreen extends StatelessWidget {
  static const String idScreen = "homescreen";

  const HomeScreen({super.key});

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
                height: 50.0,
              ),
              Text(
                "Home",
                textAlign: TextAlign.center,
                style: GoogleFonts.playfairDisplay(
                    fontStyle: FontStyle.italic,
                    fontSize: 50.0,
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
                  Text(
                    "Aqui você poderá ver seus livros que foram lidos.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                        fontStyle: FontStyle.normal,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Senha", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text('Voltar'),
                  )
                ]),
              ),
              TextButton(
                style: flatButtonStyle,
                onPressed: () {},
                child: Text('Não possui uma conta? Crie uma agora.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
