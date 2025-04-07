import 'package:flutter/material.dart';

class EmailDetailScreen extends StatelessWidget {
  final String sender;
  final String subject;
  final String body;
  final String time;

  const EmailDetailScreen({
    required this.sender,
    required this.subject,
    required this.body,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Email Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sender,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(time, style: TextStyle(color: Colors.grey)),
            Divider(),
            Text(
              subject,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(body, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
