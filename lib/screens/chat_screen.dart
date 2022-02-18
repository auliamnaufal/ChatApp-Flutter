import 'package:chat_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('Chat'),
        backgroundColor: Colors.lightBlueAccent,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.close))],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        //for send some message
                      },
                      child: Text(
                        'Send',
                        style: kSendButtonTextStyle,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
