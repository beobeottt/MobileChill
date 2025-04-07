import 'package:flutter/material.dart';

class ComposeScreen extends StatefulWidget {
  @override
  _ComposeScreenState createState() => _ComposeScreenState();
}

class _ComposeScreenState extends State<ComposeScreen> {
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  void _sendEmail() {
    if (_toController.text.isEmpty ||
        _subjectController.text.isEmpty ||
        _bodyController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Vui lòng điền đầy đủ thông tin")));
      return;
    }

    // Logic gửi email sẽ được tích hợp sau (ví dụ: Firebase hoặc API SMTP)
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Email đã gửi thành công!")));
    Navigator.pop(context); // Quay lại màn hình trước
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soạn Email"),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _sendEmail, // Gửi email khi nhấn nút
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _toController,
              decoration: InputDecoration(labelText: "Đến"),
            ),
            TextField(
              controller: _subjectController,
              decoration: InputDecoration(labelText: "Chủ đề"),
            ),
            Expanded(
              child: TextField(
                controller: _bodyController,
                decoration: InputDecoration(labelText: "Nội dung"),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
