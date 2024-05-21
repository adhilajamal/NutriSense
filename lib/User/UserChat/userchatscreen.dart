import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String name;

  ChatPage({required this.name});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      // Implement your sending message functionality here
      // For example, add the message to the chat log, send it to a server, etc.
      
      // Clear the text field after sending the message
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          widget.name,
          style: TextStyle(fontWeight: FontWeight.bold), 
        ),
      ),
      body: Column(
        children: [
          // Chat messages display area (you can replace this with your actual chat UI)
          Expanded(
            child: Container(
              // Replace this container with your chat messages display widget
              color: Colors.grey[200],
              child: Center(
                child: Text("Chat with us"),
              ),
            ),
          ),
          // Messaging text field and send icon button
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Decrease text field height
                    ),
                  ),
                ),
                SizedBox(width: 8.0), // Consistent padding
                IconButton(
                  icon: Icon(
                    Icons.send,
                    size: 30, // Increase icon size
                    color: Colors.grey[900],
                  ),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the message controller when the widget is disposed
    _messageController.dispose();
    super.dispose();
  }
}
