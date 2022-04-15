import 'package:chat_app/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

<<<<<<< HEAD
final _firestore = FirebaseFirestore.instance;
late User loggedInUser;

class ChatScreen extends StatefulWidget {
  static const String id = "CHAT_SCREEN";
=======
final _fireStore = FirebaseFirestore.instance;

late User loggedInUser;

class ChatScreen extends StatefulWidget {
  static const String id = 'CHAT_SCREEN';
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
<<<<<<< HEAD
  final _auth = FirebaseAuth.instance;

  late String message;

  final fieldText = TextEditingController();
=======

  final _auth = FirebaseAuth.instance;



  late String message;

  final _textController = TextEditingController();
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c

  late String formattedDate;
  late DateTime now;

<<<<<<< HEAD
  void clearText() {
    fieldText.clear();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {}
=======
  void getCurrentUser(){
    try{
      final user = _auth.currentUser;
      if(user != null){
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch(e){}
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
  }

  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

<<<<<<< HEAD
=======


>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.forum),
<<<<<<< HEAD
        title: const Text('Chat'),
=======
        title: Text('Chat'),
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
<<<<<<< HEAD
              },
              icon: const Icon(Icons.close))
        ],
=======

              }, icon: const Icon(Icons.close))],
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
<<<<<<< HEAD
            const MessageStream(),
=======
            MessageStream(),
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
<<<<<<< HEAD
                      style: const TextStyle(color: Colors.black),
=======
                      controller: _textController,
                      style: TextStyle(color: Colors.black),
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
                      onChanged: (value) {
                        message = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                      controller: fieldText,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          now = DateTime.now();
                          formattedDate = DateFormat('kk:mm:ss').format(now);
                        });
<<<<<<< HEAD
                        _firestore.collection('messages').add({
                          'text': message,
                          'sender': loggedInUser.email!,
                          'time': formattedDate
                        });
                        clearText();
=======
                        _textController.clear();
                        _fireStore
                            .collection('messages')
                            .add({'text' : message, 'sender' : loggedInUser.email!, 'time' : formattedDate});
                        //for send some message
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
                      },
                      child: const Text(
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

class MessageStream extends StatelessWidget {
  const MessageStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
<<<<<<< HEAD
        stream: _firestore
            .collection('messages')
            .orderBy('time', descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.lightBlue,
              ),
            );
          }

          final messages = snapshot.data!.docs;
          List<MessageBubble> messageBubbles = [];

          for (var message in messages) {
=======
        stream: _fireStore.collection('messages')
            .orderBy('time', descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Center(
            child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            ),
            );

    }
          final messages = snapshot.data!.docs;
          List<MessageBubble> messageBubbles = [];
          for(var message in messages ){
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
            final messageText = message['text'];
            final messageSender = message['sender'];

            final currentUserEmail = loggedInUser.email;

<<<<<<< HEAD
            final messageWidget = MessageBubble(
                sender: messageSender,
                text: messageText,
                isMe: currentUserEmail == messageSender);
            messageBubbles.add(messageWidget);
          }
          return Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListView(
              children: messageBubbles,
            ),
          ));
        });
=======
            final messageWidget = MessageBubble(sender: messageSender, text: messageText,
            isMe : currentUserEmail == messageSender);
            messageBubbles.add(messageWidget);
            }
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListView(
                children: messageBubbles,
              ),
            ),
          );
    }
    );

>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
  }
}

class MessageBubble extends StatelessWidget {
<<<<<<< HEAD
=======

>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
  final String sender;
  final String text;
  final bool isMe;

<<<<<<< HEAD
  const MessageBubble(
      {Key? key, required this.sender, required this.text, required this.isMe})
      : super(key: key);
=======
  const MessageBubble({Key? key, required this.sender, required this.text, required this.isMe }) : super(key: key);
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
<<<<<<< HEAD
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(sender,
              style: const TextStyle(color: Colors.black54, fontSize: 12)),
          Material(
            borderRadius: BorderRadius.only(
              topLeft: isMe ? Radius.circular(30) : Radius.circular(0),
              topRight: isMe ? Radius.circular(0) : Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            elevation: 5,
            color: isMe ? Colors.lightBlue : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(text,
                  style: TextStyle(
                      color: isMe ? Colors.white : Colors.black54,
                      fontSize: 15)),
            ),
          ),
=======
          crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(sender,
            style: TextStyle(color: Colors.black54, fontSize: 12),
          ),
          Material(
            borderRadius: BorderRadius.circular(30),
              // topLeft: isMe ? Radius.circular(30) : Radius.circular(0),
              // topRight: isMe? Radius.circular(0) : Radius.circular(30),
              // bottomRight: Radius.circular(30),
              // bottomLeft: Radius.circular(30)

            elevation: 5,
            color: isMe ? Colors.lightBlue : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                text,
                style: TextStyle(
                    color:
                    isMe ? Colors.white : Colors.black54,
                    fontSize: 15),),
            ),
          )
>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
        ],
      ),
    );
  }
}
<<<<<<< HEAD
=======



  
  
  


>>>>>>> 4e0824b43ebd6bd7a27c61193db5383f6a91d02c
