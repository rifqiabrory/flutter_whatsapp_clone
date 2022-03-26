import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/home_page.dart';

late List<CameraDescription> camera;

// ignore: prefer_void_to_null
Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  camera = await availableCameras();
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp Clone',
        theme: ThemeData(
            primaryColor: const Color(0xff075E54),
            // ignore: deprecated_member_use
            accentColor: const Color(0xff25D366)),
        home: HomePage(
          camera: camera,
        ));
  }
}
