import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'message_bubble.dart';

class MessageStream extends StatelessWidget {
  MessageStream({
    required FirebaseFirestore firestore,
    required String currentUser,
  })  : _firestore = firestore,
        _currentUser = currentUser;

  final FirebaseFirestore _firestore;
  final String _currentUser;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          _firestore.collection('messages').orderBy('timestamp').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final messages = snapshot.data?.docs.reversed;
        List<MessageBubble> messageBubbles = [];
        for (var m in messages!) {
          final text = m.data()['text'];
          final sender = m.data()['sender'];
          messageBubbles.add(MessageBubble(
            text: text,
            sender: sender,
            isMe: _currentUser == sender,
          ));
        }

        return Expanded(
          child: ListView(
            children: messageBubbles,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            reverse: true,
          ),
        );
      },
    );
  }
}
