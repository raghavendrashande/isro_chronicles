import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _inputController = TextEditingController();
  String _response = "";

  Future<void> _getChatResponse(String input) async {
    final response = await http.get(Uri.https('api.openai.com','v1/completions',{'Authorization':'Bearer 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'}));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        _response = data['response'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with GPT-3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _inputController,
              decoration: InputDecoration(labelText: 'Enter your message'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _getChatResponse(_inputController.text);
              },
              child: Text('Send'),
            ),
            SizedBox(height: 20),
            Text('Response: $_response'),
          ],
        ),
      ),
    );
  }
}