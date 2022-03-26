import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: chats.length,
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              const Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(chats[index].imageUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      chats[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(chats[index].time,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        )),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    chats[index].message,
                    style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
