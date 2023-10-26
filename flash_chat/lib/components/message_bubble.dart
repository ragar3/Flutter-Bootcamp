import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({required this.text, required this.sender, required this.isMe});

  final String text;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          isMe
              ? Container()
              : Text(
                  sender,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 12.0,
                  ),
                ),
          Material(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15.0,
                  color: isMe
                      ? Theme.of(context).colorScheme.onPrimaryContainer
                      : Colors.black54,
                ),
              ),
            ),
            color: isMe
                ? Theme.of(context).colorScheme.primaryContainer
                : Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: isMe ? Radius.circular(30.0) : Radius.zero,
              bottomLeft: Radius.circular(30.0),
              topRight: isMe ? Radius.zero : Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            elevation: 5.0,
          ),
        ],
      ),
    );
  }
}
