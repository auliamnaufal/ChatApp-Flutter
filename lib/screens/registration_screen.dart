import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset('Images/logo.png'),
            ),
            const SizedBox(
              height: 48
            ),
            TextField(
              onChanged: (value){

              },
              decoration: InputDecoration(
                hintText: 'Input your Email',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0)
                )
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value){

              },
              decoration: InputDecoration(
                  hintText: 'Input your Passsword',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0)
                  )
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: MaterialButton(
                  onPressed: (){
                    // button registration
                  },
                  minWidth: 200,
                  height: 32,
                  child: const Text('Register', style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
