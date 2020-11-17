import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'ChatScreen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance.collection('usermessages');
  User loggedInUser;
  String userMsg;
  final msgTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    final user = _auth.currentUser;

    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    }
  }

  void getMessages() async {
    var messages = await _firestore.get();
    for (var msg in messages.docs) {
      print(msg.data());
    }
  }

// Listening for messages
  void streamMessages() async {
    await for (var snapshot in _firestore.snapshots()) {
      for (var msg in snapshot.docs) {
        print(msg.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
                // streamMessages();
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessageStream(firestore: _firestore),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: msgTextController,
                      onChanged: (value) {
                        userMsg = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      msgTextController.clear();
                      _firestore.add({
                        'sender': loggedInUser.email,
                        'message': userMsg,
                      });
                    },
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
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
  MessageStream({
    @required this.firestore,
  });

  final CollectionReference firestore;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestore.snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }

        List<MsgBubble> msgWidgets = [];
        final messages = snapshot.data.docs;

        for (var msg in messages) {
          final msgText = msg.data()['message'];
          final msgSender = msg.data()['sender'];

          final msgWiget = MsgBubble(text: msgText, sender: msgSender);
          msgWidgets.add(msgWiget);
        }

        return Expanded(
          child: ListView(
            children: msgWidgets,
          ),
        );
      },
    );
  }
}

class MsgBubble extends StatelessWidget {
  MsgBubble({
    this.text,
    this.sender,
  });

  final String text;
  final String sender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            sender,
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Material(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(30),
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                text,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
