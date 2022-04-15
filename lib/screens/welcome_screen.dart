import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
<<<<<<< HEAD
  static const String id = "WELCOME_SCREEN";

=======
  static const String id = 'WELCOME_SCREEN';
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
<<<<<<< HEAD
            Center(
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    child: Image.asset('Images/logo.png'),
                  ),
                  const Text(
                    'Flash Chat',
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  )
                ],
              ),
=======
            Row(
              children: [
                SizedBox(
                  height: 60,
                  child: Image.asset('Images/logo.png'),
                ),
                Text('Flash Chat', style: const TextStyle(fontSize: 45, fontWeight: FontWeight.w900, color: Colors.black),)
              ],
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
            ),
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(32),
                child: MaterialButton(
<<<<<<< HEAD
                  onPressed: () {
=======
                  onPressed: (){
                   Navigator.pushNamed(context, LoginScreen.id);
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
                    // to login screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  minWidth: 200.0,
                  height: 42,
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(32),
                child: MaterialButton(
<<<<<<< HEAD
                  onPressed: () {
=======
                  onPressed: (){
                    Navigator.pushNamed(context, RegistrationScreen.id);
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
                    // to login screen
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42,
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
