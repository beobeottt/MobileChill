import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobilechill/screens/login_screen.dart' show LoginScreen;
import 'package:mobilechill/widgets/email_title.dart' show EmailTile;

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> emails = [
    {
      "sender": "Google",
      "subject": "Your Security Alert",
      "body": "We noticed a new sign-in to your account.",
      "time": "10:30 AM",
    },
    {
      "sender": "Flutter Team",
      "subject": "Flutter 4.0 Released!",
      "body": "Discover new features in Flutter 4.0...",
      "time": "9:15 AM",
    },
    {
      "sender": "OpenAI",
      "subject": "ChatGPT Updates",
      "body": "New improvements to AI models...",
      "time": "Yesterday",
    },
  ];

  // Hàm đăng xuất
  void _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _signOut(context),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          return EmailTile(
            sender: emails[index]["sender"]!,
            subject: emails[index]["subject"]!,
            body: emails[index]["body"]!,
            time: emails[index]["time"]!,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Điều hướng sang màn hình soạn email (Compose)
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
