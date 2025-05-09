import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String otherUser;

  ChatPage({required this.otherUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat with $otherUser')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // messages go here
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: TextField(decoration: InputDecoration(hintText: 'Type message...'))),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  // send message logic
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
