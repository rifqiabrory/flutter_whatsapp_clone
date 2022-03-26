import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/calls_page.dart';
import 'package:flutter_whatsapp_clone/pages/camera_page.dart';
import 'package:flutter_whatsapp_clone/pages/chat_page.dart';
import 'package:flutter_whatsapp_clone/pages/status_page.dart';

class HomePage extends StatefulWidget {
  final List<CameraDescription> camera;
  const HomePage({Key? key, required this.camera}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isShowFab = true;
  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1 || _tabController.index == 3) {
        isShowFab = true;
        _currentIndex = _tabController.index;
      } else {
        _currentIndex = _tabController.index;
        isShowFab = false;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Tab> _tabs = [
      const Tab(
        icon: Icon(Icons.camera_alt),
      ),
      const Tab(
        text: "Chats",
      ),
      const Tab(
        text: "Status",
      ),
      const Tab(
        text: "Calls",
      ),
    ];

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text("WhatsApp"),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              elevation: 0.7,
              backgroundColor: Theme.of(context).primaryColor,
              bottom: TabBar(
                tabs: _tabs,
                controller: _tabController,
                // ignore: deprecated_member_use
                indicatorColor: Theme.of(context).accentColor,
              ),
              actions: <Widget>[
                IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Searching'),
                        action: SnackBarAction(
                          label: 'OK',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      ));
                    },
                    icon: const Icon(Icons.search)),
                IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Toggle More'),
                        action: SnackBarAction(
                          label: 'OK',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      ));
                    },
                    icon: const Icon(Icons.more_vert))
              ],
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            CameraPage(
              camera: widget.camera,
            ),
            const ChatPage(),
            const StatusPage(),
            const CallsPage(),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: isShowFab,
        child: FloatingActionButton(
          // ignore: deprecated_member_use
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            _currentIndex == 1 ? Icons.message : Icons.call,
            color: Colors.white,
          ),
          onPressed: () {
            if (_currentIndex == 1) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Chat'),
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Call'),
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              ));
            }
          },
        ),
      ),
    );
  }
}
