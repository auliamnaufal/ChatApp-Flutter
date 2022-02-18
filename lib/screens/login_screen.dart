import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0,
              child: Image.asset('Images/logo.png'),
            ),
           const SizedBox(
              height: 40.0,
            ),
            TextField(
              onChanged: (value) {
            },
              decoration: const InputDecoration(
                hintText: 'Enter Your Email',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0)
                )
              ),
            ),
           const SizedBox(
              height: 5.0,
            ),
            TextField(
              onChanged: (value) {
              },
              decoration: const InputDecoration(
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0)
                  )
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Material(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: (){

                },
                minWidth: 200,
                height: 42,
                child: Text('log in'),
              ),
            )
        ],
        ),
      ),
    );
  }
}
