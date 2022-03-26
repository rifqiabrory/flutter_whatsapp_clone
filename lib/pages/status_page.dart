import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/status_model.dart';
import 'package:flutter_whatsapp_clone/pages/story_page_view.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Container(
        color: const Color(0xfff2f2f2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 0.0,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                leading: Stack(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/30140460"),
                    ),
                    Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.0,
                          ),
                          decoration: const BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ))
                  ],
                ),
                title: const Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Tap to add status update"),
                trailing: Wrap(
                  spacing: 10.0,
                  children: <Widget>[
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.black12,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        enableFeedback: false,
                        color: Colors.blue,
                        splashColor: Colors.transparent,
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {},
                      ),
                    ),
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.black12,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        enableFeedback: false,
                        splashColor: Colors.transparent,
                        color: Colors.blue,
                        icon: const Icon(Icons.create),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
              child: Text(
                "RECENT UPDATES",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              child: ListView.separated(
                itemCount: statuses.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(statuses[index].imageUrl),
                    ),
                    title: Text(
                      statuses[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(statuses[index].time),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => StoryPageView())));
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    indent: 80.0,
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
