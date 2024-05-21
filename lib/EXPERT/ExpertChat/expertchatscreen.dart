import 'package:flutter/material.dart';


class Message {
  final String sender;
  final String content;
  final DateTime timestamp;
  bool isRead;

  Message({
    required this.sender,
    required this.content,
    required this.timestamp,
    this.isRead = false,
  });
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [
    Message(
      sender: 'John',
      content: 'Hello there!',
      timestamp: DateTime.now(),
    ),
    Message(
      sender: 'Alice',
      content: 'Hey, how are you?',
      timestamp: DateTime.now().subtract(Duration(minutes: 30)),
      isRead: true,
    ),
    Message(
      sender: 'Bob',
      content: 'Good morning!',
      timestamp: DateTime.now().subtract(Duration(hours: 2)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          Message message = messages[index];
          return ListTile(
            title: Text(
              message.sender,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(message.content),
            trailing: message.isRead
                ? null
                : Icon(Icons.circle, color: Colors.grey.shade900),
            onTap: () {
              if (!message.isRead) {
                setState(() {
                  message.isRead = true;
                });
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailPage(message: message),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ChatDetailPage extends StatelessWidget {
  final Message message;

  const ChatDetailPage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display the message in a conversation text field box on the left side
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(message.content),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: '  Type a message...',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Decrease text field height

                    ),
                  ),
                ),
                SizedBox(width: 18), // Add width to the send button
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.grey[900], // Set the color of the send icon
                  onPressed: () {
                    // Send message functionality
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatScreen(),
  ));
}