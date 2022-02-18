import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
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
        padding: const EdgeInsets.symmetric( horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60,
                  child: Image.asset('Images/logo.png'),
                ),
                Text('Flash Chat', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900, color: Colors.black),)
              ],
            ),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(32),
                child: MaterialButton(
                  onPressed: (){
                    // to login screen
                  },
                  minWidth: 200.0,
                  height: 42,
                  child: Text('Log in', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(32),
                child: MaterialButton(
                  onPressed: (){
                    // to login screen
                  },
                  minWidth: 200.0,
                  height: 42,
                  child: const Text('Register', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
