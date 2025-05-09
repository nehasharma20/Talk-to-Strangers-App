import 'package:flutter/material.dart';

class OnlineUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Online Users')),
      body: ListView.builder(
        itemCount: 10, // replace with real users
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text('User $index'),
            subtitle: Text('Tap to chat'),
            trailing: PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'block') {
                  // block logic
                } else if (value == 'report') {
                  // report logic
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(value: 'block', child: Text('Block')),
                PopupMenuItem(value: 'report', child: Text('Report')),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, '/chat', arguments: 'User $index');
            },
          );
        },
      ),
    );
  }
}
