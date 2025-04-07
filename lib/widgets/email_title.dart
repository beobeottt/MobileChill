import 'package:flutter/material.dart';
import 'package:mobilechill/screens/email_detail_screen.dart' show EmailDetailScreen;

class EmailTile extends StatelessWidget {
  final String sender;
  final String subject;
  final String body;
  final String time;

  const EmailTile({
    required this.sender,
    required this.subject,
    required this.body,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(sender[0])),
      title: Text(sender, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subject),
      trailing: Text(time, style: TextStyle(color: Colors.grey)),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => EmailDetailScreen(
                  sender: sender,
                  subject: subject,
                  body: body,
                  time: time,
                ),
          ),
        );
      },
    );
  }
}
