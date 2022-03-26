import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/call_model.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: calls.length,
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
                  backgroundImage: NetworkImage(calls[index].imageUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      calls[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(calls[index].time,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        )),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        calls[index].hasVideo
                            ? Icons.missed_video_call
                            : Icons.call,
                        size: 13.0,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          calls[index].type.toShortString(),
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 15.0),
                        ),
                      )
                    ],
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
